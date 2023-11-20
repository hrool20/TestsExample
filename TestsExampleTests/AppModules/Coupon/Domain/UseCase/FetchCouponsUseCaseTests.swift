//
//  FetchCouponsUseCaseTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class FetchCouponsUseCaseTests: XCTestCase {

    private let repository = MockCouponRepository()
    private let mapper = MockCouponDomainMapper()
    private lazy var useCase: FetchCouponsUseCase = {
        .init(repository: repository, mapper: mapper)
    }()

    override func setUpWithError() throws {
        stub(repository) { stub in
            when(stub).fetchCoupons(any()).thenDoNothing()
        }
        stub(mapper) { stub in
            when(stub).domainToPresentation(
                equal(to: [CouponFactory.newDomainCoupon()])
            ).thenReturn([CouponFactory.newUiCoupon()])
        }
    }

    func test_execute_success() throws {
        // Arrange
        typealias UseCaseResult = CaseResult<[UiCoupon], Error>
        typealias RepositoryResult = CaseResult<[DomainCoupon], Error>
        let captor = ArgumentCaptor<(RepositoryResult) -> Void>()
        let expected = UseCaseResult.success(data: [CouponFactory.newUiCoupon()])
        let repositoryExpected = RepositoryResult.success(
            data: [CouponFactory.newDomainCoupon()])
        var result: UseCaseResult?
        // Act
        useCase.execute { response in
            result = response
        }
        // Assert
        verify(repository).fetchCoupons(captor.capture())
        captor.value?(repositoryExpected)
        XCTAssertTrue(result?.isEqual(expected) == true)
    }

}
