//
//  ProductModule.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductModule: BaseModule {
    func inject() {
        container.register(ProductDomainMapper.self) { _ in
            ProductDomainMapperImpl()
        }
        container.register(
            FetchProductsUseCase.Alias.self,
            name: FetchProductsUseCase.identifier
        ) { _ in
            .init(FetchProductsUseCase())
        }
        container.register(ProductPresentationMapper.self) { _ in
            ProductPresentationMapperImpl()
        }
        container.register(ProductsViewModel.self) { resolver in
            .init(fetchProductsUseCase: resolver.load(
                FetchProductsUseCase.Alias.self,
                FetchProductsUseCase.identifier)
            )
        }
        container.register(ProductsViewController.self) { resolver in
            .init(
                coordinator: resolver.load(Coordinator.self),
                resolver.load(ProductsViewModel.self),
                notificationCenter: resolver.load(NotificationCenterWrapper.self)
            )
        }
    }
}
