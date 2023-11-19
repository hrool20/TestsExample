//
//  CoordinatorType.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

enum CoordinatorType {
    case push(Bool = false)
    case present(PresentArgs = .init())
}
