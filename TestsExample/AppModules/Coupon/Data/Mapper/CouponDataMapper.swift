//
//  CouponDataMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

protocol CouponDataMapper {
    func dataToDomain(_ value: [ApiCoupon]) -> [DomainCoupon]
}
