//
//  BaseViewModel.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import RxSwift

class BaseViewModel {
    private let disposeBag: DisposeBag

    init() {
        disposeBag = .init()
    }

    @PublishObservable final var isLoading: Bool = false
}
