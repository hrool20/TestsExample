//
//  CouponRemoteDataSource.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

protocol CouponRemoteDataSource {
    func fetchCoupons(_ onCompletion: @escaping(CaseResult<[ApiCoupon], Error>) -> Void)
}
