//
//  CouponDomainMapperImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class CouponDomainMapperImpl: CouponDomainMapper {
    func domainToPresentation(_ value: [DomainCoupon]) -> [UiCoupon] {
        value.map(domainToPresentation(_:))
    }

    private func domainToPresentation(_ value: DomainCoupon) -> UiCoupon {
        .init(
            id: value.id,
            title: value.title,
            description: value.description,
            imageUrl: value.imageUrl,
            legal: value.legal,
            used: value.used,
            maximumUses: value.maximumUses,
            status: .init(rawValue: value.status?.rawValue) ?? .unactivated)
    }
}
