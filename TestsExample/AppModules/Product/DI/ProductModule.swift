//
//  ProductModule.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductModule: BaseModule {
    func inject() {
        container.register(ProductPresentationMapper.self) { _ in
            ProductPresentationMapperImpl()
        }
        container.register(ProductsViewModel.self) { resolver in
            .init()
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
