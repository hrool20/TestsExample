//
//  CoordinatorArgs.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

struct CoordinatorArgs<T>: Equatable {
    let name: String?
    let args: T?
    let animated: Bool
    let completion: (() -> Void)?

    init(
        name: String? = nil,
        args: T? = nil,
        animated: Bool = true,
        completion: (() -> Void)? = nil
    ) {
        self.name = name
        self.args = args
        self.animated = animated
        self.completion = completion
    }

    static func == (lhs: CoordinatorArgs<T>, rhs: CoordinatorArgs<T>) -> Bool {
        lhs.name == rhs.name && lhs.animated == rhs.animated
    }
}
extension CoordinatorArgs where T: Equatable {
    static func == (lhs: CoordinatorArgs<T>, rhs: CoordinatorArgs<T>) -> Bool {
        lhs.name == rhs.name && lhs.args == rhs.args && lhs.animated == rhs.animated
    }
}
