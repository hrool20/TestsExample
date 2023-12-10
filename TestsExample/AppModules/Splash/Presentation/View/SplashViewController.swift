//
//  SplashViewController.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 16/11/23.
//

import UIKit

final class SplashViewController: BaseViewController<SplashViewModel> {

    private enum Constants {
        static let backgroundColor: UIColor = .white
        static let title: String = .init(localized: "This_is_testing_app")
        enum Label {
            enum Title {
                static let font: UIFont = .boldSystemFont(ofSize: 18.0)
                static let textColor: UIColor = .black
            }
        }
        enum StackView {
            static let normalSpacing: CGFloat = 10.0
            enum First {
                static let horizontal: CGFloat = 20.0
            }
        }
    }
    private lazy var firstStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        return stackView
    }()
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(frame: .zero)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.style = .large
        return activityIndicator
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindViewModel()
        viewModel.onViewDidLoad()
    }

    private func setupUI() {
        view.backgroundColor = Constants.backgroundColor
        firstStackView.spacing = Constants.StackView.normalSpacing
        titleLabel.font = Constants.Label.Title.font
        titleLabel.textAlignment = .center
        titleLabel.textColor = Constants.Label.Title.textColor
        titleLabel.text = Constants.title
        activityIndicator.color = Constants.Label.Title.textColor
        activityIndicator.startAnimating()
        setupConstraints()
    }

    private func setupConstraints() {
        view.addSubview(firstStackView)
        let firstStackConstraints = [
            firstStackView.leadingAnchor.constraint(
                greaterThanOrEqualTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: Constants.StackView.First.horizontal),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(
                greaterThanOrEqualTo: firstStackView.trailingAnchor,
                constant: Constants.StackView.First.horizontal),
            firstStackView.centerXAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            firstStackView.centerYAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ]
        firstStackView.addArrangedSubview(titleLabel)
        firstStackView.addArrangedSubview(activityIndicator)
        NSLayoutConstraint.activate(firstStackConstraints)
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }

    private func bindViewModel() {
        subscribe(observable: viewModel.$goToHome) { _ in
            let vc = Injection.shared.provider.getMainTabBar()
            UIApplication.shared.activeWindow?.rootViewController = vc
        }
    }

}
