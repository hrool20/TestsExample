//
//  DecodeHelper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Foundation

final class CodableHelper {
    private let jsonDecoder: JSONDecoder
    private let jsonEncoder: JSONEncoder

    init() {
        jsonDecoder = .init()
        jsonDecoder.dateDecodingStrategy = .formatted(.init())
        jsonEncoder = .init()
    }

    func decode<T: Decodable>(_ dataAsJson: Data) throws -> T {
        return try jsonDecoder.decode(T.self, from: dataAsJson)
    }

    func encode<T: Encodable>(encode: T) throws -> Data {
        return try jsonEncoder.encode(encode)
    }
}
