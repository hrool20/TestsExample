//
//  Resolver+Extension.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Swinject

extension Resolver {
    func load<V>(_ type: V.Type, _ name: String? = nil) -> V {
        load(type, name, Optional<Never>.none)
    }

    func load<V, T>(_ type: V.Type, _ name: String? = nil, _ args: T?) -> V {
        let value: V?
        if let args = args {
            value = resolve(type, name: name, argument: args)
        } else {
            value = resolve(type, name: name)
        }
        guard let value = value else { fatalError("Instance of type \(type) not found.") }
        return value
    }
}
