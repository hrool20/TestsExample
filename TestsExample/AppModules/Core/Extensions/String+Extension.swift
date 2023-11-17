//
//  String+Extension.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 16/11/23.
//

import Foundation

extension String {
    var firstCapitalized: Self {
        prefix(1).capitalized + dropFirst()
    }
}
