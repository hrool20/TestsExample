//
//  NSLayoutConstraint+Extension.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import UIKit

extension NSLayoutConstraint {
    public func withPriority(_ priority: UILayoutPriority) -> Self {
        self.priority = priority
        return self
    }
}
