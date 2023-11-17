//
//  Coordinator.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Swinject
import UIKit

final class Coordinator {
    private let container: Container
    var viewController: UIViewController?

    init(container: Container) {
        self.container = container
    }

    func show<V: UIViewController>(
        _ viewControllerType: V.Type,
        as type: CoordinatorType
    ) {
        show(viewControllerType, as: type, with: .init(args: Optional<Never>.none))
    }

    func show<V: UIViewController, T>(
        _ viewControllerType: V.Type,
        as type: CoordinatorType,
        with configuration: CoordinatorArgs<T>
    ) {
        let vc = resolve(viewControllerType, configuration)
        switch type {
        case .push(let value):
            vc.hidesBottomBarWhenPushed = value
            viewController?.navigationController?.pushViewController(vc, animated: configuration.animated)
        case .present(let conf):
            var nc: UIViewController = vc
            if conf.likeNavigation {
                nc = UINavigationController(rootViewController: vc)
            }
            nc.modalPresentationStyle = conf.presentationStyle
            nc.modalTransitionStyle = conf.transitionStyle
            nc.transitioningDelegate = conf.transitioningDelegate
            viewController?.present(nc, animated: configuration.animated, completion: configuration.completion)
        }
    }

    private func resolve<V: UIViewController, T>(
        _ viewControllerType: V.Type,
        _ configuration: CoordinatorArgs<T>
    ) -> V {
        let vc: V?
        if let args = configuration.args {
            vc = container.load(viewControllerType, configuration.name, args)
        } else {
            vc = container.load(viewControllerType, configuration.name)
        }
        guard let vc = vc else { fatalError("Instance of type \(viewControllerType) not found.") }
        return vc
    }
}
