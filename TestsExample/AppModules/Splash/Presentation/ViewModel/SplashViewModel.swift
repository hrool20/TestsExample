//
//  SplashViewModel.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

final class SplashViewModel: BaseViewModel {
    @PublishObservable private(set) var goToHome: Void?

    func onViewDidLoad() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) {
            self.goToHome = nil
        }
    }
}
