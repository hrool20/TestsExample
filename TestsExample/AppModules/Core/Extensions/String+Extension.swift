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

    func format(
        _ dateFormat: DateConstants,
        with timeZone: TimeZone? = nil
    ) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = timeZone ?? .current
        dateFormatter.dateFormat = dateFormat.rawValue
        return dateFormatter.date(from: self)
    }
}
