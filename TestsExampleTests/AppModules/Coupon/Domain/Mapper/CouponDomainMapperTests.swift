//
//  CouponDomainMapperTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 20/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class CouponDomainMapperTests: XCTestCase {

    private lazy var mapper: CouponDomainMapper = {
        CouponDomainMapperImpl()
    }()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_domainToPresentation_UiProduct() throws {
        // Arrange
        let value = [CouponFactory.newDomainCoupon()]
        let expected = [CouponFactory.newUiCoupon()]
        // Act
        let result = mapper.domainToPresentation(value)
        // Assert
        XCTAssertEqual(result, expected)
    }

}
