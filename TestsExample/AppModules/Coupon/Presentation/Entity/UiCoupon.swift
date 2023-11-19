//
//  UiCoupon.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

struct UiCoupon: Equatable {
    enum Status: Equatable {
        case activated
        case unactivated
        case used

        init?(rawValue: String?) {
            switch rawValue {
            case "used": self = .used
            case "activated": self = .activated
            case "unactivated": self = .unactivated
            default: return nil
            }
        }
    }
    let id: String
    let title: String
    let description: String?
    let imageUrl: String
    let legal: String?
    let used: Int
    let maximumUses: Int
    let status: Status
}
