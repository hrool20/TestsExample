//
//  CoreModule+Presentation.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

extension CoreModule {
    func presentationInject() {
        container.register(Coordinator.self) { _ in
            .init(container: self.container)
        }
        container.register(NotificationCenterWrapper.self) { _ in
            NotificationCenterWrapperImpl(notificationCenter: .default)
        }
    }
}
