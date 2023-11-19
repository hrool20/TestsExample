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
        container.register(CouponDomainMapper.self) { _ in
            CouponDomainMapperImpl()
        }
        container.register(
            FetchCouponsUseCase.Alias.self,
            name: FetchCouponsUseCase.identifier
        ) { resolver in
            .init(FetchCouponsUseCase(
                repository: resolver.load(CouponRepository.self),
                mapper: resolver.load(CouponDomainMapper.self)
            ))
        }
        container.register(CouponsViewModel.self) { resolver in
            .init(fetchCouponsUseCase: resolver.load(
                FetchCouponsUseCase.Alias.self,
                FetchCouponsUseCase.identifier)
            )
        }
        container.register(CouponsViewController.self) { resolver in
            .init(
                coordinator: resolver.load(Coordinator.self),
                resolver.load(CouponsViewModel.self),
                notificationCenter: resolver.load(NotificationCenterWrapper.self)
            )
        }
    }
}
