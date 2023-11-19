//
//  DomainCoupon.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

struct DomainCoupon: Equatable {
    enum Status: String, Equatable {
        case activated
        case unactivated
        case used
    }
    let id: String
    let title: String
    let description: String?
    let imageUrl: String
    let legal: String?
    let used: Int
    let maximumUses: Int
    let status: Status?
}
