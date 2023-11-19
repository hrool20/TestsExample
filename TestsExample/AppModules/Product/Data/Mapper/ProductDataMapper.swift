//
//  ProductDataMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

protocol ProductDataMapper {
    func dataToDomain(_ value: [ApiProduct]) -> [DomainProduct]
}
