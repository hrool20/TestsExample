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
    typealias ErrorType = Error

    private let repository: ProductRepository
    private let mapper: ProductDomainMapper

    init(
        repository: ProductRepository,
        mapper: ProductDomainMapper
    ) {
        self.repository = repository
        self.mapper = mapper
    }

    func execute(
        _ parameters: RequestType,
        _ onCompletion: @escaping (CaseResult<ResultType, ErrorType>) -> Void
    ) {
        repository.fetchProducts { [weak self] result in
            guard let self = self else { return }
            onCompletion(result.map(self.mapper.domainToPresentation(_:)))
        }
    }
}
