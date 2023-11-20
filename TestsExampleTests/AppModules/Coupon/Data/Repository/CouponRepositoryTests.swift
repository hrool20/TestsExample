//
//  CouponRepositoryTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class CouponRepositoryTests: XCTestCase {

    private let remote = MockCouponRemoteDataSource()
    private let mapper = MockCouponDataMapper()
    private lazy var repository: CouponRepository = {
        CouponRepositoryImpl(remote: remote, mapper: mapper)
    }()

    override func setUpWithError() throws {
        stub(remote) { stub in
            when(stub.fetchCoupons(any())).thenDoNothing()
        }
        stub(mapper) { stub in
            when(stub.dataToDomain(
                equal(to: [CouponFactory.newApiCoupon()])
            )).thenReturn([CouponFactory.newDomainCoupon()])
        }
    }

    func test_fetchCoupons_success() throws {
        // Arrange
        typealias RepositoryResult = CaseResult<[DomainCoupon], Error>
        typealias RemoteResult = CaseResult<[ApiCoupon], Error>
        let captor = ArgumentCaptor<(RemoteResult) -> Void>()
        let expected = RepositoryResult.success(data: [CouponFactory.newDomainCoupon()])
        let remoteExpected = RemoteResult.success(data: [CouponFactory.newApiCoupon()])
        var result: RepositoryResult?
        // Act
        repository.fetchCoupons { response in
            result = response
        }
        // Assert
        verify(remote).fetchCoupons(captor.capture())
        captor.value?(remoteExpected)
        XCTAssertTrue(result?.isEqual(expected) == true)
    }

}
