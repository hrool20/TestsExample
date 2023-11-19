//
//  CoreModule+Data.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Foundation

extension CoreModule {
    func dataInject() {
        container.register(CodableHelper.self) { _ in
            .init()
        }
        container.register(
            LocalStorage.self,
            name: LocalStorageProvider.keychain.rawValue
        ) { _ in
            KeychainLocalStorage()
        }.inObjectScope(.container)
        container.register(
            LocalStorage.self,
            name: LocalStorageProvider.memory.rawValue
        ) { _ in
            MemoryLocalStorage()
        }.inObjectScope(.container)
        container.register(
            LocalStorage.self,
            name: LocalStorageProvider.userDefaults.rawValue
        ) { resolver in
            UserDefaultsLocalStorage(
                codableHelper: resolver.load(CodableHelper.self)
            )
        }.inObjectScope(.container)
    }
}
