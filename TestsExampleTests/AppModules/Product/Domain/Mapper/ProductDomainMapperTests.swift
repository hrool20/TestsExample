//
//  ProductDomainMapperTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 20/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class ProductDomainMapperTests: XCTestCase {

    private lazy var mapper: ProductDomainMapper = {
        ProductDomainMapperImpl()
    }()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_domainToPresentation_UiProduct() throws {
        // Arrange
        let value = [ProductFactory.newDomainProduct()]
        let expected = [ProductFactory.newUiProduct()]
        // Act
        let result = mapper.domainToPresentation(value)
        // Assert
        XCTAssertEqual(result, expected)
    }

}
