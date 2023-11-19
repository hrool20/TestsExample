//
//  ProductsViewController.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import UIKit

final class ProductsViewController: BaseViewController<ProductsViewModel> {

    private enum Constants {
        static let backgroundColor: UIColor = .white
        enum TableView {
            static let backgroundColor: UIColor = .clear
            static let contentInset: UIEdgeInsets = .init(
                top: 12.0, left: .zero, bottom: 12.0, right: .zero)
            static let leastNonzero: CGRect = .init(
                origin: .zero, size: .init(width: .zero, height: CGFloat.leastNonzeroMagnitude))
        }
    }
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .singleLine
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        viewModel.onViewDidLoad()
    }

    private func setupUI() {
        navigationItem.title = "Lista usando table view"
        view.backgroundColor = Constants.backgroundColor
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = Constants.TableView.backgroundColor
        tableView.contentInset = Constants.TableView.contentInset
        tableView.estimatedSectionHeaderHeight = .zero
        tableView.estimatedSectionFooterHeight = .zero
        tableView.tableFooterView = UIView(frame: Constants.TableView.leastNonzero)
        
    }

    private func setupConstraints() {
        view.addSubview(tableView)
        let tableViewConstraints = [
            tableView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(
                equalTo: tableView.trailingAnchor),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(
                equalTo: tableView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(
            tableViewConstraints
        )
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }

    private func bindViewModel() {
        subscribeToLoading()
    }

    // MARK: - UITableViewDelegate && UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        .zero
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        .init()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        .leastNonzeroMagnitude
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        .leastNonzeroMagnitude
    }

}
extension ProductsViewController: UITableViewDelegate, UITableViewDataSource {}
