//
//  ProductRepositoryTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class ProductRepositoryTests: XCTestCase {

    private let remote = MockProductRemoteDataSource()
    private let mapper = MockProductDataMapper()
    private lazy var repository: ProductRepository = {
        ProductRepositoryImpl(remote: remote, mapper: mapper)
    }()

    override func setUpWithError() throws {
        stub(remote) { stub in
            when(stub).fetchProducts(any()).thenDoNothing()
        }
        stub(mapper) { stub in
            when(stub).dataToDomain(
                equal(to: [ProductFactory.newApiProduct()])
            ).thenReturn([ProductFactory.newDomainProduct()])
        }
    }

    func test_fetchProducts_success() throws {
        typealias RepositoryResult = CaseResult<[DomainProduct], Error>
        typealias RemoteResult = CaseResult<[ApiProduct], Error>
        let captor = ArgumentCaptor<(RemoteResult) -> Void>()
        let expected = RepositoryResult.success(data: [ProductFactory.newDomainProduct()])
        let remoteExpected = RemoteResult.success(data: [ProductFactory.newApiProduct()])
        var result: RepositoryResult?
        // Act
        repository.fetchProducts { response in
            result = response
        }
        // Assert
        verify(remote).fetchProducts(captor.capture())
        captor.value?(remoteExpected)
        XCTAssertTrue(result?.isEqual(expected) == true)
    }

}
