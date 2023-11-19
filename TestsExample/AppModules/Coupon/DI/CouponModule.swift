//
//  CouponModule.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class CouponModule: BaseModule {
    func inject() {
        container.register(CouponDataMapper.self) { _ in
            CouponDataMapperImpl()
        }
        container.register(CouponRemoteDataSource.self) { _ in
            CouponRemoteDataSourceImpl()
        }
        container.register(CouponRepository.self) { resolver in
            CouponRepositoryImpl(
                remote: resolver.load(CouponRemoteDataSource.self),
                mapper: resolver.load(CouponDataMapper.self)
            )
        }
    }
}
