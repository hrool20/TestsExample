//
//  Injection.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Swinject
import UIKit

final class Injection {
    static let shared = Injection()

    private let container: Container
    let provider: MainControllerProvider

    private init() {
        container = .init()
        provider = .init(container)
        injectDependencies()
    }

    private func injectDependencies() {
        // Add here all modules to be injected
        CoreModule(container).inject()
        SplashModule(container).inject()
    }
}
