//
//  MainTabBarController.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import UIKit

final class MainTabBarController: BaseTabBarController<MainTabBarViewModel> {

    private enum Constants {
        static let collectionImage: UIImage = .add
        static let collectionTitle: String = "Tablas"
        static let profileImage: UIImage = .remove
        static let profileTitle: String = "Mi perfil"
        static let tableImage: UIImage = .actions
        static let tableTitle: String = "Collección"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        let tableList = Injection.shared.provider.getTableList()
        let collectionList = Injection.shared.provider.getCollectionList()
        let profile = Injection.shared.provider.getProfile()
        let controllers = [
            withNavigation(tableList, title: Constants.tableTitle, image: Constants.tableImage),
            withNavigation(collectionList, title: Constants.collectionTitle, image: Constants.collectionImage),
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
