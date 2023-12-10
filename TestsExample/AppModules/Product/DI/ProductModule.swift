//
//  ProductModule.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductModule: BaseModule {
    func inject() {
        container.register(ProductDataMapper.self) { _ in
            ProductDataMapperImpl()
        }
        container.register(ProductRemoteDataSource.self) { resolver in
            ProductRemoteDataSourceImpl(
                manager: resolver.load(NetworkManager.self)
            )
        }
        container.register(ProductRepository.self) { resolver in
            ProductRepositoryImpl(
                remote: resolver.load(ProductRemoteDataSource.self),
                mapper: resolver.load(ProductDataMapper.self)
            )
        }
        container.register(ProductDomainMapper.self) { _ in
            ProductDomainMapperImpl()
        }
        container.register(
            FetchProductsUseCase.Alias.self,
            name: FetchProductsUseCase.identifier
        ) { resolver in
            .init(FetchProductsUseCase(
                repository: resolver.load(ProductRepository.self),
                mapper: resolver.load(ProductDomainMapper.self)
            ))
        }
        container.register(ProductPresentationMapper.self) { _ in
            ProductPresentationMapperImpl()
        }
        container.register(ProductsViewModel.self) { resolver in
            .init(fetchProductsUseCase: resolver.load(
                FetchProductsUseCase.Alias.self,
                FetchProductsUseCase.identifier),
                  mapper: resolver.load(ProductPresentationMapper.self)
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
