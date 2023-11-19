//
//  CouponRepository.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

protocol CouponRepository {
    func fetchCoupons(_ onCompletion: @escaping(CaseResult<[Void], Error>) -> Void)
}
