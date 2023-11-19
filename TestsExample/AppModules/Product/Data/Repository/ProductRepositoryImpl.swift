//
//  ProductRepositoryImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductRepositoryImpl: ProductRepository {
    private let remote: ProductRemoteDataSource
    private let mapper: ProductDataMapper

    init(
        remote: ProductRemoteDataSource,
        mapper: ProductDataMapper
    ) {
        self.remote = remote
        self.mapper = mapper
    }

    func fetchProducts(_ onCompletion: @escaping (CaseResult<[DomainProduct], Error>) -> Void) {
        remote.fetchProducts { [weak self] result in
            guard let self = self else { return }
            onCompletion(result.map(self.mapper.dataToDomain(_:)))
        }
    }
}
