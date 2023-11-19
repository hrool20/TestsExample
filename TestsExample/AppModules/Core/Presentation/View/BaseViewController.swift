//
//  BaseViewController.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import RxSwift
import UIKit

class BaseViewController<V: BaseViewModel>: UIViewController {

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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func subscribe<T>(observable: Observable<T>, action: @escaping (T) -> Void) {
        observable.subscribe(onNext: { data in
            action(data)
        }).disposed(by: disposeBag)
    }

    func subscribeToLoading() {
        subscribe(observable: viewModel.$isLoading) { [weak self] value in
            self?.showLoading(value)
        }
    }

    private func showLoading(_ value: Bool) {
    }

}
