//
//  ProductFactory.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample

enum ProductFactory {
    static func newApiProduct(_ i: Int = 1) -> ApiProduct {
        .init(
            id: "id\(i)",
            itemId: "itemId\(i)",
            name: "name \(i)",
            description: "description \(i)",
            brand: "brand \(i)",
            sku: "sku \(i)",
            price: .init(i),
            unit: "unit \(i)",
            images: .init(repeating: "image \(i)", count: i))
    }

    static func newDomainProduct(_ i: Int = 1) -> DomainProduct {
        let value = newApiProduct(i)
        return .init(
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

    static func newUiProduct(_ i: Int = 1) -> UiProduct {
        let value = newDomainProduct(i)
        return .init(
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
