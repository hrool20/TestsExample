//
//  NetworkManager.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 20/11/23.
//

import Foundation

protocol NetworkManager {
    func request<T, E>(
        count: Int,
        _ get: @escaping(Int) -> T,
        _ onCompletion: @escaping(CaseResult<[T], E>) -> Void)
}
