//
//  CouponDataMapperImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class CouponDataMapperImpl: CouponDataMapper {
    func dataToDomain(_ value: [ApiCoupon]) -> [DomainCoupon] {
        value.map(dataToDomain(_:))
    }

    private func dataToDomain(_ value: ApiCoupon) -> DomainCoupon {
        .init(
            id: value.id,
            title: value.title,
            description: value.description,
            imageUrl: value.imageUrl,
            legal: value.legal,
            used: value.used,
            maximumUses: value.maximumUses,
            status: .init(rawValue: value.status) ?? .unactivated)
    }
}
