//
//  TestableObserver+Extension.swift
//  TestsExampleTests
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import RxTest

extension TestableObserver {
    var elements: [Element?] {
        events.map { event in
            event.value.element
        }
    }
}
