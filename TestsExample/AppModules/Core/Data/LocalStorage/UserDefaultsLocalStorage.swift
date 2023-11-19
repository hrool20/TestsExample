//
//  UserDefaultsLocalStorage.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Foundation

final class UserDefaultsLocalStorage: LocalStorage {
    private let codableHelper: CodableHelper
    private let userDefaults: UserDefaults
    
    init(codableHelper: CodableHelper) {
        self.codableHelper = codableHelper
        userDefaults = .standard
    }

    func save<T>(_ value: T?, key: String) where T : Encodable {
        switch value.self {
        case let aux as String:
            userDefaults.set(aux, forKey: key)
        case let aux as Int:
            userDefaults.set(aux, forKey: key)
        case let aux as Bool:
            userDefaults.set(aux, forKey: key)
        case let aux as Double:
            userDefaults.set(aux, forKey: key)
        case let aux as Float:
            userDefaults.set(aux, forKey: key)
        case let aux as Data:
            userDefaults.set(aux, forKey: key)
        default:
            guard let encoded = try? codableHelper.encode(encode: value) else { break }
            userDefaults.set(encoded, forKey: key)
        }
    }

    func load<T>(key: String) -> T? where T : Decodable {
        if let value = userDefaults.value(forKey: key) as? T {
            return value
        }
        guard let data = userDefaults.data(forKey: key) else { return nil }
        return try? codableHelper.decode(data)
    }

    func delete(key: String) -> Bool {
        userDefaults.removeObject(forKey: key)
        return true
    }

    func contains(key: String) -> Bool {
        userDefaults.data(forKey: key) != nil
    }
}
