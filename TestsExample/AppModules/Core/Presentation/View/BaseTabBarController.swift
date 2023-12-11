//
//  BaseTabBarController.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import RxSwift
import UIKit

class BaseTabBarController<V: BaseViewModel>: UITabBarController, BaseController, SubscribeHelper {

    let viewModel: V
    let coordinator: Coordinator
    let notificationCenter: NotificationCenterWrapper
    let disposeBag: DisposeBag

    init(
        coordinator: Coordinator,
        _ viewModel: V,
        notificationCenter: NotificationCenterWrapper
    ) {
        self.coordinator = coordinator
        self.viewModel = viewModel
        self.notificationCenter = notificationCenter
        disposeBag = .init()
        super.init(nibName: nil, bundle: nil)
        coordinator.viewController = self
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func showLoading(_ value: Bool) {
    }

}
