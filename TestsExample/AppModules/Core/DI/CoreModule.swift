//
//  CoreModule.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

final class CoreModule: BaseModule {
    func inject() {
        dataInject()
        domainInject()
        presentationInject()
    }
}
