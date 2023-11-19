//
//  ProductRemoteDataSourceImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductRemoteDataSourceImpl: ProductRemoteDataSource {
    func fetchProducts(_ onCompletion: @escaping (CaseResult<[ApiProduct], Error>) -> Void) {
        var array = [ApiProduct]()
        for i in 1...[5, 10, 20].randomElement()! {
            array.append(.init(
                id: "\(i)", itemId: "ref-\(i)", name: "Product \(i)", description: "This is a description",
                brand: "Brand \(i)", sku: "SKU-\(i)", price: 1000.123, unit: ["un", "kg", "lt"].randomElement()!,
                images: []))
        }
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + .seconds(3)) {
            onCompletion(.success(data: array))
        }
    }
}
