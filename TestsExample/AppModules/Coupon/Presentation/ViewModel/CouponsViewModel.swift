//
//  CouponsViewModel.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Foundation

final class CouponsViewModel: BaseViewModel {
    private let fetchCouponsUseCase: FetchCouponsUseCase.Alias

    init(fetchCouponsUseCase: FetchCouponsUseCase.Alias) {
        self.fetchCouponsUseCase = fetchCouponsUseCase
    }

    @PublishObservable private(set) var items: [UiCoupon]?

    func onViewDidLoad() {
        fetchCoupons(false)
    }

    func onReload() {
        fetchCoupons(true)
    }

    private func fetchCoupons(_ isUpdating: Bool) {
        if !isUpdating {
            isLoading = true
        }
        fetchCouponsUseCase.execute { [weak self] result in
            guard let self = self else { return }
            self.isLoading = false
            guard case .success(let items) = result else { return }
            self.items = items
        }
    }
}
