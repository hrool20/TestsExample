//
//  CouponRemoteDataSourceTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class CouponRemoteDataSourceTests: XCTestCase {

    private let manager = MockNetworkManager()
    private lazy var remote: CouponRemoteDataSource = {
        CouponRemoteDataSourceImpl(manager: manager)
    }()

    override func setUpWithError() throws {
        stub(manager) { stub in
            when(stub).request(
                count: any(), any(), any(((CaseResult<[ApiCoupon], Error>) -> Void).self)
            ).thenDoNothing()
        }
    }

    func test_fetchCoupons_success() throws {
        // Arrange
        typealias NetworkResult = CaseResult<[ApiCoupon], Error>
        let captor = ArgumentCaptor<(NetworkResult) -> Void>()
        let expected = NetworkResult.success(data: [CouponFactory.newApiCoupon()])
        var result: NetworkResult?
        // Act
        remote.fetchCoupons { response in
            result = response
        }
        // Assert
        verify(manager).request(count: any(), any(), captor.capture())
        captor.value?(expected)
        XCTAssertTrue(result?.isEqual(expected) == true)
    }

}
