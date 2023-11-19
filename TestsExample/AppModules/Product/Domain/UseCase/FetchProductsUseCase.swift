//
//  FetchProductsUseCase.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class FetchProductsUseCase: ClosureUseCase {
    typealias RequestType = Void?
    typealias ResultType = [UiProduct]
    typealias ErrorType = Void

    func execute(
        _ parameters: RequestType,
        _ onCompletion: @escaping (CaseResult<ResultType, ErrorType>) -> Void
    ) {
    }
}
