//
//  MemoryLocalStorage.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Foundation

final class MemoryLocalStorage: LocalStorage {
    private let lock: NSRecursiveLock
    private var dict: [String: Any?]

    init() {
        lock = .init()
        dict = .init()
    }

    func save<T>(_ value: T?, key: String) where T: Encodable {
        sync {
            dict[key] = value
        }
    }

    func load<T>(key: String) -> T? where T: Decodable {
        sync {
            dict[key] as? T
        }
    }

    func delete(key: String) -> Bool {
        guard contains(key: key) else { return false }
        return sync {
            dict.removeValue(forKey: key)
            return true
        }
    }

    func contains(key: String) -> Bool {
        sync {
            dict[key] != nil
        }
    }
}
private extension MemoryLocalStorage {
    func sync<T>(action: () -> T) -> T {
        lock.lock()
        defer { lock.unlock() }
        return action()
    }
}
