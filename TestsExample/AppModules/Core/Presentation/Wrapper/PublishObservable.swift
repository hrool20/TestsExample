//
//  PublishObservable.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import RxRelay
import RxSwift

@propertyWrapper
final class PublishObservable<T> {
    private let subject: PublishRelay<T>
    var wrappedValue: T {
        didSet {
            subject.accept(wrappedValue)
        }
    }
    var projectedValue: Observable<T> {
        subject.asObservable()
    }

    init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        self.subject = .init()
    }
}
