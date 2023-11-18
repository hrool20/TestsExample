//
//  KeychainLocalStorage.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Foundation

final class KeychainLocalStorage: LocalStorage {
    func save<T>(_ value: T?, key: String) where T : Encodable {
        guard let newData = map(value: value) else { return }
        var query = query(forKey: key)
        if contains(key: key) {
            SecItemUpdate(query as CFDictionary, [kSecValueData as String: newData] as CFDictionary)
        } else {
            query[kSecValueData as String] = newData
            SecItemAdd(query as CFDictionary, nil)
        }
    }

    func load<T>(key: String) -> T? where T : Decodable {
        map(data: loadValue(key: key))
    }

    func delete(key: String) -> Bool {
        guard contains(key: key) else { return false }
        SecItemDelete(query(forKey: key) as CFDictionary)
        return true
    }

    func contains(key: String) -> Bool {
        loadValue(key: key) != nil
    }
}
private extension KeychainLocalStorage {
    private static let accountName: String = {
        #if RELEASE
        return "hrool20.pe.TestExample"
        #elseif DEBUG
        return "hrool20.pe.TestExample.qa"
        #else
        return ""
        #endif
    }()

    func query(forKey key: String) -> [String: Any] {
        [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecAttrService as String: Self.accountName
        ]
    }

    func loadValue(key: String) -> Data? {
        var query = query(forKey: key)
        query[kSecMatchLimit as String] = kSecMatchLimitOne
        query[kSecReturnAttributes as String] = true
        query[kSecReturnData as String] = true
        var keychainItem: CFTypeRef?
        let status = SecItemCopyMatching(query as CFDictionary, &keychainItem)
        guard status != errSecItemNotFound else { return nil }
        let item = keychainItem as? [String : Any]
        guard let data = item?[kSecValueData as String] as? Data else { return nil }
        return data
    }

    func map<T>(data: Data?) -> T? {
        guard let data = data else { return nil }
        var value: T?
        switch T.self {
        case is String.Type:
            value = String(data: data, encoding: .utf8) as? T
        case is Int.Type:
            let number = try? NSKeyedUnarchiver.unarchivedObject(ofClass: NSNumber.self, from: data)
            value = number?.intValue as? T
        case is Double.Type:
            let number = try? NSKeyedUnarchiver.unarchivedObject(ofClass: NSNumber.self, from: data)
            value = number?.doubleValue as? T
        case is Float.Type:
            let number = try? NSKeyedUnarchiver.unarchivedObject(ofClass: NSNumber.self, from: data)
            value = number?.floatValue as? T
        case is Bool.Type:
            let number = try? NSKeyedUnarchiver.unarchivedObject(ofClass: NSNumber.self, from: data)
            value = number?.boolValue as? T
        default:
            value = data as? T
        }
        return value
    }

    func map<T>(value: T?) -> Data? {
        guard let value = value else { return nil }
        var data: Data?
        switch value.self {
        case let aux as String:
            data = aux.data(using: .utf8, allowLossyConversion: false)
        case let aux as Int:
            let number = NSNumber(value: aux)
            data = try? NSKeyedArchiver.archivedData(withRootObject: number, requiringSecureCoding: true)
        case let aux as Double:
            let number = NSNumber(value: aux)
            data = try? NSKeyedArchiver.archivedData(withRootObject: number, requiringSecureCoding: true)
        case let aux as Float:
            let number = NSNumber(value: aux)
            data = try? NSKeyedArchiver.archivedData(withRootObject: number, requiringSecureCoding: true)
        case let aux as Bool:
            let number = NSNumber(value: aux)
            data = try? NSKeyedArchiver.archivedData(withRootObject: number, requiringSecureCoding: true)
        default:
            data = nil
        }
        return data
    }
}
