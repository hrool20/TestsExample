//
//  CouponCollectionViewCell.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import UIKit

final class CouponCollectionViewCell: UICollectionViewCell {

    private enum Constants {
        static let backgroundColor: UIColor = .white
        static let selectionType: UITableViewCell.SelectionStyle = .none
        enum Label {
            enum Description {
                static let font: UIFont = .systemFont(ofSize: 14.0)
                static let lines: Int = 2
                static let textColor: UIColor = .black
            }
            enum Title {
                static let compression: UILayoutPriority = .init(751)
                static let font: UIFont = .systemFont(ofSize: 14.0)
                static let hugging: UILayoutPriority = .init(252)
                static let textColor: UIColor = .black
            }
        }
        enum ImageView {
            static let height: CGFloat = 100.0
            static let radius: CGFloat = 16.0
            static let width: CGFloat = 70.0
        }
        enum StackView {
            static let normalSpacing: CGFloat = 10.0
            static let smallSpacing: CGFloat = 3.0
            enum First {
                static let horizontal: CGFloat = 16.0
                static let vertical: CGFloat = 8.0
            }
        }
    }
    private lazy var firstStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .top
        stackView.distribution = .fill
        return stackView
    }()
    private lazy var productImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    private lazy var secondStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        return stackView
    }()
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var item: UiCoupon? {
        didSet {
            guard let item = item else { return }
            productImageView.loadImage(url: item.imageUrl)
            titleLabel.text = item.title
            descriptionLabel.text = item.description
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        awakeFromNib()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    private func setupUI() {
        backgroundColor = Constants.backgroundColor
        firstStackView.spacing = Constants.StackView.normalSpacing
        productImageView.layer.cornerRadius = Constants.ImageView.radius
        secondStackView.spacing = Constants.StackView.smallSpacing
        titleLabel.font = Constants.Label.Title.font
        titleLabel.textColor = Constants.Label.Title.textColor
        titleLabel.setCompressionResistancePriority(Constants.Label.Title.compression)
        titleLabel.setHuggingPriority(Constants.Label.Title.hugging)
        descriptionLabel.font = Constants.Label.Description.font
        descriptionLabel.numberOfLines = Constants.Label.Description.lines
        descriptionLabel.textColor = Constants.Label.Description.textColor
        setupConstraints()
    }

    private func setupConstraints() {
        contentView.addSubview(firstStackView)
        let firstStackConstraints = [
            firstStackView.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: Constants.StackView.First.vertical),
            firstStackView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: Constants.StackView.First.horizontal),
            contentView.trailingAnchor.constraint(
                equalTo: firstStackView.trailingAnchor,
                constant: Constants.StackView.First.horizontal),
            contentView.bottomAnchor.constraint(
                equalTo: firstStackView.bottomAnchor,
                constant: Constants.StackView.First.vertical)
        ]
        let productImageConstraints = [
            productImageView.widthAnchor.constraint(equalToConstant: Constants.ImageView.width),
            productImageView.heightAnchor.constraint(equalToConstant: Constants.ImageView.height)
        ]
        firstStackView.addArrangedSubview(productImageView)
        firstStackView.addArrangedSubview(secondStackView)
        secondStackView.addArrangedSubview(titleLabel)
        secondStackView.addArrangedSubview(descriptionLabel)
        NSLayoutConstraint.activate(
            firstStackConstraints + productImageConstraints
        )
        setNeedsLayout()
        layoutIfNeeded()
    }

}
