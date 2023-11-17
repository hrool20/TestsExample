//
//  CaseResult.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

enum CaseResult<T, E> {
    case success(data: T)
    case error(error: ErrorType<E>)
    case unauthorized(error: Error)
}

enum ErrorType<E>: Error {
    case connection
    case api(_ apiError: E)
    case general(_ error: Error? = nil)
}
