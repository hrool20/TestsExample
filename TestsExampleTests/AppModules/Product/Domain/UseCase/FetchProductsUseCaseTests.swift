//
//  FetchProductsUseCaseTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class FetchProductsUseCaseTests: XCTestCase {

    private let repository = MockProductRepository()
    private let mapper = MockProductDomainMapper()
    private lazy var useCase: FetchProductsUseCase = {
        .init(repository: repository, mapper: mapper)
    }()

    override func setUpWithError() throws {
        stub(repository) { stub in
            when(stub).fetchProducts(any()).thenDoNothing()
        }
        stub(mapper) { stub in
            when(stub).domainToPresentation(
                equal(to: [ProductFactory.newDomainProduct()])
            ).thenReturn([ProductFactory.newUiProduct()])
        }
    }

    func test_execute_success() throws {
        // Arrange
        typealias UseCaseResult = CaseResult<[UiProduct], Error>
        typealias RepositoryResult = CaseResult<[DomainProduct], Error>
        let captor = ArgumentCaptor<(RepositoryResult) -> Void>()
        let expected = UseCaseResult.success(data: [ProductFactory.newUiProduct()])
        let repositoryExpected = RepositoryResult.success(
            data: [ProductFactory.newDomainProduct()])
        var result: UseCaseResult?
        // Act
        useCase.execute { response in
            result = response
        }
        // Assert
        verify(repository).fetchProducts(captor.capture())
        captor.value?(repositoryExpected)
        XCTAssertTrue(result?.isEqual(expected) == true)
    }

}
