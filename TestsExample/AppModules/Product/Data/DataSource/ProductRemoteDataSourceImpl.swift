//
//  ProductRemoteDataSourceImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class ProductRemoteDataSourceImpl: ProductRemoteDataSource {
    func fetchProducts(_ onCompletion: @escaping (CaseResult<[ApiProduct], Error>) -> Void) {
        let images = [
            "https://wallpapers.com/images/hd/vertical-pictures-r93cdchwdse79vvv.jpg",
            "https://w0.peakpx.com/wallpaper/426/919/HD-wallpaper-vertical-stars-dark-sky-reflection.jpg",
            "https://thumbs.dreamstime.com/b/vertical-panorama-country-road-9905521.jpg",
            "https://cdn.fstoppers.com/styles/full/s3/media/2020/12/21/nando-vertical-horizontal-05.jpg",
            "https://upload.wikimedia.org/wikipedia/commons/0/0f/Eiffel_Tower_Vertical.JPG",
            "https://www.jessleephotos.com/images/640/Tetonspring.jpg",
            "https://upload.wikimedia.org/wikipedia/commons/9/91/F-15_vertical_deploy.jpg",
            "https://w0.peakpx.com/wallpaper/300/911/HD-wallpaper-dark-vertical-black-thumbnail.jpg"
        ]
        var array = [ApiProduct]()
        for i in 1...[5, 10, 20].randomElement()! {
            array.append(.init(
                id: "\(i)", itemId: "ref-\(i)", name: "Product \(i)", description: "This is a description",
                brand: "Brand \(i)", sku: "SKU-\(i)", price: 1000.123, unit: ["un", "kg", "lt"].randomElement()!,
                images: images.shuffled()))
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            onCompletion(.success(data: array))
        }
    }
}
