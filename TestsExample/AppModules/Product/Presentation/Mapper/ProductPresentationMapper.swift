//
//  ProductPresentationMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

protocol ProductPresentationMapper {
    func map(_ value: [UiProduct]) -> [UiProductItem]
}
