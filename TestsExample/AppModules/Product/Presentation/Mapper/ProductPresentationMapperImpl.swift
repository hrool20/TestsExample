//
//  ProductPresentationMapperImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductPresentationMapperImpl: ProductPresentationMapper {
    func map(_ value: UiProduct) -> UiProductItem {
        .init(
            brand: value.brand,
            name: "\(value.name) - \(value.unit)",
            description: value.description,
            price: "\(value.price)")
    }
}
