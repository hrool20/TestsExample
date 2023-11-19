//
//  ProductsViewModel.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductsViewModel: BaseViewModel {
    private let fetchProductsUseCase: FetchProductsUseCase.Alias
    private let mapper: ProductPresentationMapper

    init(
        fetchProductsUseCase: FetchProductsUseCase.Alias,
        mapper: ProductPresentationMapper
    ) {
        self.fetchProductsUseCase = fetchProductsUseCase
        self.mapper = mapper
    }

    @PublishObservable private(set) var items: [UiProductItem]?

    func onViewDidLoad() {
        isLoading = true
        fetchProductsUseCase.execute { [weak self] result in
            guard let self = self else { return }
            self.isLoading = false
            guard case .success(let items) = result else { return }
            self.items = self.mapper.map(items)
        }
    }
}
