//
//  CouponFactory.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample

enum CouponFactory {
    static func newApiCoupon(
        _ i: Int = 1,
        status: String = "unactivated"
    ) -> ApiCoupon {
        .init(
            id: "id\(i)",
            title: "title \(i)",
            description: "description \(i)",
            imageUrl: "imageUrl \(i)",
            legal: "legal \(i)",
            used: i,
            maximumUses: i + 1,
            status: status)
    }

    static func newDomainCoupon(
        _ i: Int = 1,
        status: DomainCoupon.Status = .unactivated
    ) -> DomainCoupon {
        let value = newApiCoupon(i, status: status.rawValue)
        return .init(
            id: value.id,
            title: value.title,
            description: value.description,
            imageUrl: value.imageUrl,
            legal: value.legal,
            used: value.used,
            maximumUses: value.maximumUses,
            status: .init(rawValue: value.status))
    }

    static func newUiCoupon(
        _ i: Int = 1,
        status: UiCoupon.Status = .unactivated
    ) -> UiCoupon {
        let value = newDomainCoupon(i)
        return .init(
            id: value.id,
            title: value.title,
            description: value.description,
            imageUrl: value.imageUrl,
            legal: value.legal,
            used: value.used,
            maximumUses: value.maximumUses,
            status: status)
    }
}
