//
//  SubscribeHelper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import RxSwift

protocol SubscribeHelper: AnyObject {
    func showLoading(_ value: Bool)
}
extension SubscribeHelper where Self: BaseController, V: BaseViewModel {
    func subscribe<T>(observable: Observable<T>, action: @escaping (T) -> Void) {
        observable.subscribe(onNext: { data in
            action(data)
        }).disposed(by: disposeBag)
    }

    func subscribeToLoading(_ completion: ((Bool) -> Void)? = nil) {
        subscribe(observable: viewModel.$isLoading) { [weak self] value in
            self?.showLoading(value)
            completion?(value)
        }
    }
}
