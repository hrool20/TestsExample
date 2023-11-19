//
//  NotificationCenterWrapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Foundation

protocol NotificationCenterWrapper {
    func post(
        name aName: NSNotification.Name,
        object anObject: Any?)
    func post(
        name aName: NSNotification.Name,
        object anObject: Any?,
        userInfo aUserInfo: [AnyHashable: Any]?)
    func addObserver(
        _ observer: Any,
        selector: Selector,
        name: NSNotification.Name?,
        object: Any?)
    func removeObserver(
        _ observer: Any,
        name: NSNotification.Name?,
        object: Any?)
}
