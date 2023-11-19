//
//  ProductDataMapperImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductDataMapperImpl: ProductDataMapper {
    func dataToDomain(_ value: [ApiProduct]) -> [DomainProduct] {
        value.map(dataToDomain(_:))
    }

    private func dataToDomain(_ value: ApiProduct) -> DomainProduct {
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
