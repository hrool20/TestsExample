//
//  NotificationCenterWrapperImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

final class NotificationCenterWrapperImpl: NotificationCenterWrapper {
    private let notificationCenter: NotificationCenter

    init(notificationCenter: NotificationCenter) {
        self.notificationCenter = notificationCenter
    }

    func post(
        name aName: NSNotification.Name,
        object anObject: Any?
    ) {
        notificationCenter.post(name: aName, object: anObject)
    }

    func post(
        name aName: NSNotification.Name,
        object anObject: Any?,
        userInfo aUserInfo: [AnyHashable: Any]?
    ) {
        notificationCenter.post(name: aName, object: anObject, userInfo: aUserInfo)
    }

    func addObserver(
        _ observer: Any,
        selector: Selector,
        name: NSNotification.Name?,
        object: Any?
    ) {
        notificationCenter.addObserver(observer, selector: selector, name: name, object: object)
    }

    func removeObserver(
        _ observer: Any,
        name: NSNotification.Name?,
        object: Any?
    ) {
        notificationCenter.removeObserver(observer, name: name, object: nil)
    }
}
