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

    private let manager = MockNetworkManager()
    private lazy var remote: ProductRemoteDataSource = {
        ProductRemoteDataSourceImpl(manager: manager)
    }()

    override func setUpWithError() throws {
        stub(manager) { stub in
            when(stub).request(
                count: any(), any(), any(((CaseResult<[ApiProduct], Error>) -> Void).self)
            ).thenDoNothing()
        }
    }

    func test_fetchProducts_success() throws {
        // Arrange
        typealias NetworkResult = CaseResult<[ApiProduct], Error>
        let captor = ArgumentCaptor<(NetworkResult) -> Void>()
        let expected = NetworkResult.success(data: [ProductFactory.newApiProduct()])
        var result: NetworkResult?
        // Act
        remote.fetchProducts { response in
            result = response
        }
        // Assert
        verify(manager).request(count: any(), any(), captor.capture())
        captor.value?(expected)
        XCTAssertTrue(result?.isEqual(expected) == true)
    }

}
