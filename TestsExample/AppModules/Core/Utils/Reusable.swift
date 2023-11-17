//
//  Reusable.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

protocol Reusable {
    static var identifier: String { get }
}

extension Reusable {
    static var identifier: String {
        return String(describing: self)
    }
}
