//
//  BaseModule.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Swinject

typealias BaseModule = BaseModuleProtocol & BaseModuleEntity

protocol BaseModuleProtocol {
    func inject()
}

class BaseModuleEntity {
    let container: Container
    
    init(_ container: Container) {
        self.container = container
    }
}
