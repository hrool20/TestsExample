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

    private var remote: CouponRemoteDataSource = {
        CouponRemoteDataSourceImpl()
    }()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_fetchCoupons_success() throws {
        // Arrange
        typealias RemoteResult = CaseResult<[ApiCoupon], Error>
        let captor = ArgumentCaptor<(RemoteResult) -> Void>()
        let expected = RemoteResult.success(data: [CouponFactory.newApiCoupon()])
        var result: RemoteResult?
        // Act
        remote.fetchCoupons { response in
            result = response
        }
        // Assert
//        verify(remote).fetchCoupons(captor.capture())
//        captor.value?(remoteExpected)
        XCTAssertTrue(result?.isEqual(expected) == true)
    }

}
