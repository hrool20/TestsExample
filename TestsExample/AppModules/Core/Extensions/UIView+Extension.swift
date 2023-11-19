//
//  UIView+Extension.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import UIKit

extension UIView {
    func setPriority(_ priority: UILayoutPriority) {
        setCompressionResistancePriority(priority)
        setHuggingPriority(priority)
    }

    func setCompressionResistancePriority(_ priority: UILayoutPriority) {
        setContentCompressionResistancePriority(priority, for: .horizontal)
        setContentCompressionResistancePriority(priority, for: .vertical)
    }

    func setHuggingPriority(_ priority: UILayoutPriority) {
        setContentHuggingPriority(priority, for: .horizontal)
        setContentHuggingPriority(priority, for: .vertical)
    }
}
