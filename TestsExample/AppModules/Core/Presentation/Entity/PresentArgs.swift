//
//  PresentArgs.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import UIKit

struct PresentArgs: Equatable {
    let presentationStyle: UIModalPresentationStyle
    let transitionStyle: UIModalTransitionStyle
    let transitioningDelegate: UIViewControllerTransitioningDelegate?
    let likeNavigation: Bool

    init(
        presentationStyle: UIModalPresentationStyle = .automatic,
        transitionStyle: UIModalTransitionStyle = .coverVertical,
        transitioningDelegate: UIViewControllerTransitioningDelegate? = nil,
        likeNavigation: Bool = false
    ) {
        self.presentationStyle = (transitioningDelegate == nil) ? presentationStyle : .custom
        self.transitionStyle = transitionStyle
        self.transitioningDelegate = transitioningDelegate
        self.likeNavigation = likeNavigation
    }

    static func == (lhs: PresentArgs, rhs: PresentArgs) -> Bool {
        lhs.presentationStyle == rhs.presentationStyle &&
        lhs.transitionStyle == lhs.transitionStyle &&
        lhs.likeNavigation == rhs.likeNavigation
    }
}
