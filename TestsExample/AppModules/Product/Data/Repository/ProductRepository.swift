//
//  ProductRepository.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

protocol ProductRepository {
    func fetchProducts(_ onCompletion: @escaping(CaseResult<[DomainProduct], Error>) -> Void)
}
