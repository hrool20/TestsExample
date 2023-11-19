//
//  CaseResult.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

enum ErrorType<E>: Error {
    case api(_ apiError: E)
    case connection
    case general(_ error: Error? = nil)
}

enum CaseResult<T, E> {
    case success(data: T)
    case error(error: ErrorType<E>)
    case unauthorized(error: Error)
}
extension CaseResult {
    func map<U, F>(
        _ transform: @escaping(T) -> U,
        _ handle: @escaping(E) -> F
    ) -> CaseResult<U, F> {
        typealias NewResult = CaseResult<U, F>
        switch self {
        case .success(let data):
            return NewResult.success(data: transform(data))
        case .error(let type):
            switch type {
            case .api(let error):
                return NewResult.error(error: .api(handle(error)))
            case .connection:
                return NewResult.error(error: .connection)
            case .general(let error):
                return NewResult.error(error: .general(error))
            }
        case .unauthorized(let error):
            return NewResult.unauthorized(error: error)
        }
    }

    func map<U>(_ transform: @escaping(T) -> U) -> CaseResult<U, U> where T == E {
        map(transform, transform)
    }

    func map<U>(_ transform: @escaping(T) -> U) -> CaseResult<U, E> {
        map(transform, { $0 })
    }

    func isEqual(
        _ result: CaseResult<T, E>?
    ) -> Bool where T: Equatable, E: Equatable {
        switch (self, result) {
        case let (.success(data1), .success(data2)):
            return data1 == data2
        case let (.error(type1), .error(type2)):
            switch (type1, type2) {
            case let (.api(apiError1), .api(apiError2)):
                return apiError1 == apiError2
            case (.connection, .connection):
                return true
            case let (.general(error1), .general(error2)):
                return (error1 as? NSError)?.domain == (error2 as? NSError)?.domain
            default:
                return false
            }
        case let (.unauthorized(error1), .unauthorized(error2)):
            return (error1 as NSError).domain == (error2 as NSError).domain
        default:
            return false
        }
    }
}
