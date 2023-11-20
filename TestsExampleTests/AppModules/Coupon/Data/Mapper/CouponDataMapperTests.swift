//
//  CouponDataMapperTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 20/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class CouponDataMapperTests: XCTestCase {

    private lazy var mapper: CouponDataMapper = {
        CouponDataMapperImpl()
    }()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_dataToDomain_DomainProduct() throws {
        // Arrange
        let value = [CouponFactory.newApiCoupon()]
        let expected = [CouponFactory.newDomainCoupon()]
        // Act
        let result = mapper.dataToDomain(value)
        // Assert
        XCTAssertEqual(result, expected)
    }

}
