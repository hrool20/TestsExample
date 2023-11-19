//
//  UICollectionView+Extension.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import UIKit

extension UICollectionView {
    func registerClass<T: UICollectionViewCell>(_ type: T.Type) {
        register(type.self, forCellWithReuseIdentifier: T.identifier)
    }

    func registerClass<T: UICollectionReusableView>(_ type: T.Type, kind: String) {
        register(type.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: T.identifier)
    }

    func registerNib<T: UICollectionViewCell>(_ type: T.Type) {
        let nib = UINib(nibName: T.identifier, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.identifier)
    }

    func registerNib<T: UICollectionReusableView>(_ type: T.Type, kind: String) {
        let nib = UINib(nibName: T.identifier, bundle: nil)
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: T.identifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(_ indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(
            withReuseIdentifier: T.identifier,
            for: indexPath
        ) as? T else {
            fatalError("Expected cell to be of type \(T.identifier)")
        }
        return cell
    }

    func dequeueReusableView<T: UICollectionReusableView>(
        _ kind: String,
        _ indexPath: IndexPath
    ) -> T {
        guard let view = dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: T.identifier,
            for: indexPath
        ) as? T else {
            fatalError("Expected view to be of type \(T.identifier)")
        }
        return view
    }
}
extension UICollectionReusableView: Reusable {}
