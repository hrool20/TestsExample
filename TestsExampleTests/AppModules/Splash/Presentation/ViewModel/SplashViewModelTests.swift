//
//  SplashViewModelTests.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 20/11/23.
//

@testable import TestsExample
import Cuckoo
import XCTest

final class SplashViewModelTests: RxTestCase {

    private lazy var viewModel: SplashViewModel = {
        .init()
    }()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_onViewDidLoad_success() throws {
        // Arrange
        let goHomeObserver = newObserver(viewModel.$goToHome)
        // Act
        viewModel.onViewDidLoad()
        // Assert
        XCTAssertTrue(goHomeObserver.elements.isEmpty)
    }

}
