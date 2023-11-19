//
//  CouponRepositoryImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class CouponRepositoryImpl: CouponRepository {
    private let remote: CouponRemoteDataSource
    private let mapper: CouponDataMapper

    init(
        remote: CouponRemoteDataSource,
        mapper: CouponDataMapper
    ) {
        self.remote = remote
        self.mapper = mapper
    }

    func fetchCoupons(_ onCompletion: @escaping (CaseResult<[Void], Error>) -> Void) {
    }
}
