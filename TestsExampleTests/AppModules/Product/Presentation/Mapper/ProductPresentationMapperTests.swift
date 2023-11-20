//
//  ProductPresentationMapperTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 20/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class ProductPresentationMapperTests: XCTestCase {

    private lazy var mapper: ProductPresentationMapper = {
        ProductPresentationMapperImpl()
    }()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_map_UiProductItem() throws {
        // Arrange
        let value = [ProductFactory.newUiProduct()]
        let expected = [ProductFactory.newUiProductItem()]
        // Act
        let result = mapper.map(value)
        // Assert
        XCTAssertEqual(result, expected)
    }

}
