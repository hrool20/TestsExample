//
//  UITableView+Extension.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import UIKit

extension UITableView {
    func registerClass<T: UITableViewCell>(_ type: T.Type) {
        register(type.self, forCellReuseIdentifier: T.identifier)
    }

    func registerClass<T: UITableViewHeaderFooterView>(_ type: T.Type) {
        register(type.self, forHeaderFooterViewReuseIdentifier: T.identifier)
    }

    func registerNib<T: UITableViewCell>(_ type: T.Type) {
        let nib = UINib(nibName: T.identifier, bundle: nil)
        register(nib, forCellReuseIdentifier: T.identifier)
    }

    func registerNib<T: UITableViewHeaderFooterView>(_ type: T.Type) {
        let nib = UINib(nibName: T.identifier, bundle: nil)
        register(nib, forHeaderFooterViewReuseIdentifier: T.identifier)
    }

    func dequeueReusableCell<T: UITableViewCell>(_ indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Expected cell to be of type \(T.identifier)")
        }
        return cell
    }

    func dequeueReusableView<T: UITableViewHeaderFooterView>() -> T {
        guard let cell = dequeueReusableHeaderFooterView(withIdentifier: T.identifier) as? T else {
            fatalError("Expected view to be of type \(T.identifier)")
        }
        return cell
    }
}
extension UITableViewCell: Reusable {}
extension UITableViewHeaderFooterView: Reusable {}
