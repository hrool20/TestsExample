//
//  BaseController.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import RxSwift

protocol BaseController<V> {
    associatedtype V = BaseViewModel
    var viewModel: V { get }
    var coordinator: Coordinator { get }
    var notificationCenter: NotificationCenterWrapper { get }
    var disposeBag: DisposeBag { get }
}
