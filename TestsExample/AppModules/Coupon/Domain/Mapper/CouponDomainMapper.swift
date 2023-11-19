//
//  CouponDomainMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

protocol CouponDomainMapper {
    func domainToPresentation(_ value: [DomainCoupon]) -> [UiCoupon]
}
