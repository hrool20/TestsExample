//
//  Date+Extension.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Foundation

extension Date {
    func format(
        _ dateFormat: DateConstants,
        with timeZone: TimeZone? = nil
    ) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = timeZone ?? .current
        dateFormatter.dateFormat = dateFormat.rawValue
        return dateFormatter.string(from: self)
    }
}
