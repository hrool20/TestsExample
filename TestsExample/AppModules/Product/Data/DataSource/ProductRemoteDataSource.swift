//
//  ProductRemoteDataSource.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

protocol ProductRemoteDataSource {
    func fetchProducts(_ onCompletion: @escaping(CaseResult<[ApiProduct], Error>) -> Void)
}
