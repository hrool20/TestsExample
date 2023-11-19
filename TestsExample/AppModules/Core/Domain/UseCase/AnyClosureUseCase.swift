//
//  AnyClosureUseCase.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

class AnyClosureUseCase<RQ, RS, E>: ClosureUseCase {
    private let call: (RQ, @escaping (CaseResult<RS, E>) -> Void) -> Void

    init<T: ClosureUseCase>(_ useCase: T) where T.RequestType == RQ, T.ResultType == RS, T.ErrorType == E {
        call = useCase.execute
    }

    func execute(_ parameters: RQ, _ onCompletion: @escaping (CaseResult<RS, E>) -> Void) {
        call(parameters, onCompletion)
    }
}
