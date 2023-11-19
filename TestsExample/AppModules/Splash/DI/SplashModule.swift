//
//  SplashModule.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Swinject

final class SplashModule: BaseModule {
    func inject() {
        container.register(SplashViewModel.self) { _ in
            .init()
        }
        container.register(SplashViewController.self) { resolver in
            .init(
                coordinator: resolver.load(Coordinator.self),
                resolver.load(SplashViewModel.self),
                notificationCenter: resolver.load(NotificationCenterWrapper.self)
            )
        }
    }
}
