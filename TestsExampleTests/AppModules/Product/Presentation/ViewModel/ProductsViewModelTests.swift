//
//  ProductsViewModelTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class ProductsViewModelTests: RxTestCase {

    private let fetchProductsUseCase = MockAnyClosureUseCase<
        FetchProductsUseCase.RequestType,
        FetchProductsUseCase.ResultType,
        FetchProductsUseCase.ErrorType
    >(TestClosureUseCase())
    private let mapper = MockProductPresentationMapper()
    private lazy var viewModel: ProductsViewModel = {
        .init(fetchProductsUseCase: fetchProductsUseCase, mapper: mapper)
    }()

    override func setUpWithError() throws {
        stub(fetchProductsUseCase) { stub in
            when(stub).execute(any(Void?.self), any()).thenDoNothing()
        }
        stub(mapper) { stub in
            when(stub).map(
                equal(to: [ProductFactory.newUiProduct()])
            ).thenReturn([ProductFactory.newUiProductItem()])
        }
    }

    func test_onViewDidLoad_success() throws {
        // Arrange
        typealias UseCaseResult = CaseResult<[UiProduct], Error>
        let loadingObserver = newObserver(viewModel.$isLoading)
        let itemsObserver = newObserver(viewModel.$items)
        let useCaseCaptor = ArgumentCaptor<(UseCaseResult) -> Void>()
        let expected = [ProductFactory.newUiProductItem()]
        let useCaseResponse = [ProductFactory.newUiProduct()]
        let useCaseExpected = UseCaseResult.success(data: useCaseResponse)
        // Act
        viewModel.onViewDidLoad()
        // Assert
        verify(fetchProductsUseCase).execute(any(Void?.self), useCaseCaptor.capture())
        useCaseCaptor.value?(useCaseExpected)
        verify(mapper).map(equal(to: useCaseResponse))
        XCTAssertEqual(loadingObserver.elements.first, true)
        XCTAssertEqual(loadingObserver.elements.last, false)
        XCTAssertEqual(itemsObserver.elements.first, expected)
    }

    func test_onReload_success() throws {
        // Arrange
        typealias UseCaseResult = CaseResult<[UiProduct], Error>
        let loadingObserver = newObserver(viewModel.$isLoading)
        let itemsObserver = newObserver(viewModel.$items)
        let useCaseCaptor = ArgumentCaptor<(UseCaseResult) -> Void>()
        let expected = [ProductFactory.newUiProductItem()]
        let useCaseResponse = [ProductFactory.newUiProduct()]
        let useCaseExpected = UseCaseResult.success(data: useCaseResponse)
        // Act
        viewModel.onReload()
        // Assert
        verify(fetchProductsUseCase).execute(any(Void?.self), useCaseCaptor.capture())
        useCaseCaptor.value?(useCaseExpected)
        verify(mapper).map(equal(to: useCaseResponse))
        XCTAssertEqual(loadingObserver.elements.first, false)
        XCTAssertEqual(itemsObserver.elements.first, expected)
    }

}
