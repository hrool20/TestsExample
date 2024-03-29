//
//  FetchCouponsUseCase.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class FetchCouponsUseCase: ClosureUseCase {
    typealias RequestType = Void?
    typealias ResultType = [UiCoupon]
    typealias ErrorType = Error

    private let repository: CouponRepository
    private let mapper: CouponDomainMapper

    init(
        repository: CouponRepository,
        mapper: CouponDomainMapper
    ) {
        self.repository = repository
        self.mapper = mapper
    }

    func execute(
        _ parameters: RequestType,
        _ onCompletion: @escaping (CaseResult<ResultType, ErrorType>) -> Void
    ) {
        repository.fetchCoupons { [weak self] result in
            guard let self = self else { return }
            onCompletion(result.map(self.mapper.domainToPresentation(_:)))
        }
    }
}
