//
//  MainTabBarModule.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Foundation

final class MainTabBarModule: BaseModule {
    func inject() {
        container.register(MainTabBarViewModel.self) { _ in
            .init()
        }
        container.register(MainTabBarController.self) { resolver in
            .init(
                coordinator: resolver.load(Coordinator.self),
                resolver.load(MainTabBarViewModel.self),
                notificationCenter: resolver.load(NotificationCenterWrapper.self)
            )
        }
    }
}
