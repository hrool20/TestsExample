//
//  ProductsViewModel.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductsViewModel: BaseViewModel {
    private let fetchProductsUseCase: FetchProductsUseCase.Alias

    init(fetchProductsUseCase: FetchProductsUseCase.Alias) {
        self.fetchProductsUseCase = fetchProductsUseCase
    }

    func onViewDidLoad() {
    }
}
