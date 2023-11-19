//
//  MainTabBarController.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import UIKit

final class MainTabBarController: BaseTabBarController<MainTabBarViewModel> {

    private enum Constants {
        static let couponsImage: UIImage = .add
        static let couponsTitle: String = "Cupones"
        static let productsImage: UIImage = .actions
        static let productsTitle: String = "Productos"
        static let profileImage: UIImage = .remove
        static let profileTitle: String = "Mi perfil"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        let products = Injection.shared.provider.getProducts()
        let coupons = Injection.shared.provider.getCoupons()
        let profile = Injection.shared.provider.getProfile()
        let controllers = [
            withNavigation(products, title: Constants.productsTitle, image: Constants.productsImage),
            withNavigation(coupons, title: Constants.couponsTitle, image: Constants.couponsImage),
            withNavigation(profile, title: Constants.profileTitle, image: Constants.profileImage)
        ]
        setViewControllers(controllers, animated: false)
    }

    private func withNavigation(
        _ controller: UIViewController,
        title: String?,
        image: UIImage?
    ) -> UINavigationController {
        let nv = UINavigationController(rootViewController: controller)
        nv.tabBarItem.title = title
        nv.tabBarItem.image = image
        return nv
    }

}
