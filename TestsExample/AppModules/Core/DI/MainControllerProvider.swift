//
//  MainControllerProvider.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Swinject
import UIKit

final class MainControllerProvider {
    private let container: Container
    
    init(_ container: Container) {
        self.container = container
    }

    func getSplash() -> SplashViewController {
        container.load(SplashViewController.self)
    }

    func getMainTabBar() -> MainTabBarController {
        container.load(MainTabBarController.self)
    }

    func getTableList() -> UIViewController {
        .init()
    }

    func getCollectionList() -> UIViewController {
        .init()
    }

    func getProfile() -> UIViewController {
        .init()
    }
}
