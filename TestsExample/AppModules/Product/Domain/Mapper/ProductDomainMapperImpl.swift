//
//  ProductDomainMapperImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductDomainMapperImpl: ProductDomainMapper {
    func domainToPresentation(_ value: [DomainProduct]) -> [UiProduct] {
        value.map(domainToPresentation(_:))
    }

    private func domainToPresentation(_ value: DomainProduct) -> UiProduct {
        .init(
            id: value.id,
            itemId: value.itemId,
            name: value.name,
            description: value.description,
            brand: value.brand,
            sku: value.sku,
            price: value.price,
            unit: value.unit,
            images: value.images)
    }
}
