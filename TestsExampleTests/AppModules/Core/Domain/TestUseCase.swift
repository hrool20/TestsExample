//
//  TestUseCase.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample

final class TestUseCase<RequestType, ResultType, ErrorType>: UseCase {
    func execute(_ parameters: RequestType) -> CaseResult<ResultType, ErrorType> {
        fatalError("Unsupported operation")
    }
}
