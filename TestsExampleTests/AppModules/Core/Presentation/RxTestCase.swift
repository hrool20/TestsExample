//
//  RxTestCase.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import RxSwift
import RxTest
import XCTest

class RxTestCase: XCTestCase {

    private lazy var disposeBag: DisposeBag = {
        .init()
    }()

    func newObserver<T>(_ observable: Observable<T>) -> TestableObserver<T> {
        let observer = TestScheduler(initialClock: .zero).createObserver(T.self)
        observable.subscribe(observer).disposed(by: disposeBag)
        return observer
    }

}
