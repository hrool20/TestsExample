//
//  UseCase.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

protocol UseCase: Reusable {
    associatedtype RequestType
    associatedtype ResultType
    associatedtype ErrorType

    func execute(_ parameters: RequestType) -> CaseResult<ResultType, ErrorType>
}
extension UseCase {
    typealias Alias = AnyUseCase<RequestType, ResultType, ErrorType>
}
