//
//  CouponsViewModelTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class CouponsViewModelTests: RxTestCase {

    private let fetchCouponsUseCase = MockAnyClosureUseCase<
        FetchCouponsUseCase.RequestType,
        FetchCouponsUseCase.ResultType,
        FetchCouponsUseCase.ErrorType
    >(TestClosureUseCase())
    private lazy var viewModel: CouponsViewModel = {
        .init(fetchCouponsUseCase: fetchCouponsUseCase)
    }()

    override func setUpWithError() throws {
        stub(fetchCouponsUseCase) { stub in
            when(stub).execute(any(Void?.self), any()).thenDoNothing()
        }
    }

    func test_onViewDidLoad_success() throws {
        // Arrange
        typealias UseCaseResult = CaseResult<[UiCoupon], Error>
        let loadingObserver = newObserver(viewModel.$isLoading)
        let itemsObserver = newObserver(viewModel.$items)
        let useCaseCaptor = ArgumentCaptor<(UseCaseResult) -> Void>()
        let expected = [CouponFactory.newUiCoupon()]
        let useCaseExpected = UseCaseResult.success(data: expected)
        // Act
        viewModel.onViewDidLoad()
        // Assert
        verify(fetchCouponsUseCase).execute(any(Void?.self), useCaseCaptor.capture())
        useCaseCaptor.value?(useCaseExpected)
        XCTAssertEqual(loadingObserver.elements.first, true)
        XCTAssertEqual(loadingObserver.elements.last, false)
        XCTAssertEqual(itemsObserver.elements.first, expected)
    }

    func test_onReload_success() throws {
        // Arrange
        typealias UseCaseResult = CaseResult<[UiCoupon], Error>
        let loadingObserver = newObserver(viewModel.$isLoading)
        let itemsObserver = newObserver(viewModel.$items)
        let useCaseCaptor = ArgumentCaptor<(UseCaseResult) -> Void>()
        let expected = [CouponFactory.newUiCoupon()]
        let useCaseExpected = UseCaseResult.success(data: expected)
        // Act
        viewModel.onReload()
        // Assert
        verify(fetchCouponsUseCase).execute(any(Void?.self), useCaseCaptor.capture())
        useCaseCaptor.value?(useCaseExpected)
        XCTAssertEqual(loadingObserver.elements.first, false)
        XCTAssertEqual(itemsObserver.elements.first, expected)
    }

}
