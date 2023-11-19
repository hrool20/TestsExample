//
//  ApiCoupon.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

struct ApiCoupon: Codable, Equatable {
    let id: String
    let title: String
    let description: String?
    let imageUrl: String
    let legal: String?
    let used: Int
    let maximumUses: Int
    let status: String
}
