//
//  ClosureUseCase.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

protocol ClosureUseCase: Reusable {
    associatedtype RequestType
    associatedtype ResultType
    associatedtype ErrorType

    func execute(_ parameters: RequestType, _ onCompletion: @escaping (CaseResult<ResultType, ErrorType>) -> Void)
}
extension ClosureUseCase {
    typealias Alias = AnyClosureUseCase<RequestType, ResultType, ErrorType>
}
