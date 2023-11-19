//
//  AnyUseCase.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

class AnyUseCase<RQ, RS, E>: UseCase {
    private let call: (RQ) -> CaseResult<RS, E>

    init<T: UseCase>(_ useCase: T) where T.RequestType == RQ, T.ResultType == RS, T.ErrorType == E {
        call = useCase.execute
    }

    func execute(_ parameters: RQ) -> CaseResult<RS, E> {
        return call(parameters)
    }
}
