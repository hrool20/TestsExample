//
//  TestClosureUseCase.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample

final class TestClosureUseCase<RequestType, ResultType, ErrorType>: ClosureUseCase {
    func execute(
        _ parameters: RequestType,
        _ onCompletion: @escaping (CaseResult<ResultType, ErrorType>) -> Void
    ) {
    }
}
