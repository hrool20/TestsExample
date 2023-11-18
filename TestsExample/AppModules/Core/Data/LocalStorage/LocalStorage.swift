//
//  LocalStorage.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Foundation

enum LocalStorageProvider: String {
    case memory
    case keychain
    case userDefaults
}

protocol LocalStorage {
    func save<T: Encodable>(_ value: T?, key: String)
    func load<T: Decodable>(key: String) -> T?
    @discardableResult func delete(key: String) -> Bool
    func contains(key: String) -> Bool
}
