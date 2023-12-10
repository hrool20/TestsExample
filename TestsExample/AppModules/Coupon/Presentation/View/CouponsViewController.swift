//
//  CouponsViewController.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import UIKit

final class CouponsViewController: BaseViewController<CouponsViewModel> {

    private enum Constants {
        static let backgroundColor: UIColor = .white
        static let title: String = .init(localized: "list_using_collection_view")
        enum CollectionView {
            static let backgroundColor: UIColor = .clear
            static let contentInset: UIEdgeInsets = .init(
                top: 12.0, left: .zero, bottom: 12.0, right: .zero)
            enum Layout {
                static let groupSpacing: CGFloat = 16.0
                static let itemSpacing: NSCollectionLayoutSpacing = .fixed(20.0)
                static let itemHeight: NSCollectionLayoutDimension = .estimated(10.0)
                static let itemWidth: NSCollectionLayoutDimension = .fractionalWidth(1.0)
            }
        }
    }
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: .init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindViewModel()
        viewModel.onViewDidLoad()
    }

    private func setupUI() {
        navigationItem.title = Constants.title
        view.backgroundColor = Constants.backgroundColor
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = getLayout()
        collectionView.contentInset = Constants.CollectionView.contentInset
        let refreshControl: UIRefreshControl = {
            let refreshControl = UIRefreshControl(frame: .zero)
            refreshControl.translatesAutoresizingMaskIntoConstraints = false
            refreshControl.addTarget(self, action: #selector(didRefresh), for: .valueChanged)
            return refreshControl
        }()
        collectionView.refreshControl = refreshControl
        collectionView.registerClass(CouponCollectionViewCell.self)
        setupConstraints()
    }

    private func setupConstraints() {
        view.addSubview(collectionView)
        let collectionViewConstraints = [
            collectionView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(
                equalTo: collectionView.trailingAnchor),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(
                equalTo: collectionView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(collectionViewConstraints)
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }

    private func bindViewModel() {
        subscribeToLoading { [weak self] value in
            guard !value else { return }
            self?.collectionView.refreshControl?.endRefreshing()
        }
        subscribe(observable: viewModel.$items) { [weak self] _ in
            self?.collectionView.reloadData()
        }
    }

    private func getLayout() -> UICollectionViewLayout {
        let provider: UICollectionViewCompositionalLayoutSectionProvider = { (_, _) in
            let itemSize = NSCollectionLayoutSize(
                widthDimension: Constants.CollectionView.Layout.itemWidth,
                heightDimension: Constants.CollectionView.Layout.itemHeight)
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            let group = NSCollectionLayoutGroup.horizontal(
                layoutSize: itemSize,
                subitems: [item])
            group.interItemSpacing = Constants.CollectionView.Layout.itemSpacing
            let section = NSCollectionLayoutSection(group: group)
            section.interGroupSpacing = Constants.CollectionView.Layout.groupSpacing
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: provider)
    }

    @objc private func didRefresh() {
        viewModel.onReload()
    }

    // MARK: - UICollectionViewDelegate & UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.items?.count ?? .zero
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(indexPath) as CouponCollectionViewCell
        cell.item = viewModel.items?[indexPath.row]
        return cell
    }

}
extension CouponsViewController: UICollectionViewDelegate, UICollectionViewDataSource {}
