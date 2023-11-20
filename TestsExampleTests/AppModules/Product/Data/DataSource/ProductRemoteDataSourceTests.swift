//
//  ProductRemoteDataSourceTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class ProductRemoteDataSourceTests: XCTestCase {

    private var remote: ProductRemoteDataSource = {
        ProductRemoteDataSourceImpl()
    }()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_fetchProducts_success() throws {
        // Arrange
        typealias RemoteResult = CaseResult<[ApiProduct], Error>
        let captor = ArgumentCaptor<(RemoteResult) -> Void>()
        let expected = RemoteResult.success(data: [ProductFactory.newApiProduct()])
        var result: RemoteResult?
        // Act
        remote.fetchProducts { response in
            result = response
        }
        // Assert
//        verify(remote).fetchProducts(captor.capture())
//        captor.value?(remoteExpected)
        XCTAssertTrue(result?.isEqual(expected) == true)
    }

}
