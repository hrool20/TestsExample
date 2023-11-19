//
//  ProductTableViewCell.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import UIKit

final class ProductTableViewCell: UITableViewCell {

    private enum Constants {
        static let backgroundColor: UIColor = .white
        static let selectionType: UITableViewCell.SelectionStyle = .none
        enum Label {
            enum Brand {
                static let font: UIFont = .systemFont(ofSize: 12.0)
                static let textColor: UIColor = .darkGray
            }
            enum Description {
                static let font: UIFont = .systemFont(ofSize: 14.0)
                static let lines: Int = 2
                static let textColor: UIColor = .black
            }
            enum Price {
                static let font: UIFont = .boldSystemFont(ofSize: 16.0)
                static let textColor: UIColor = .red
            }
            enum Title {
                static let font: UIFont = .systemFont(ofSize: 14.0)
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
        stackView.alignment = .fill
        stackView.distribution = .fill
        return stackView
    }()
    private lazy var secondStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        return stackView
    }()
    private lazy var brandLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    private lazy var priceLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var productImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    var item: UiProductItem? {
        didSet {
            guard let item = item else { return }
            brandLabel.isHidden = item.brand?.isEmpty != false
            brandLabel.text = item.brand
            titleLabel.text = item.name
            descriptionLabel.text = item.description
            priceLabel.text = item.price
            productImageView.loadImage(url: item.imageUrl)
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        selectionStyle = Constants.selectionType
        firstStackView.spacing = Constants.StackView.normalSpacing
        secondStackView.spacing = Constants.StackView.smallSpacing
        brandLabel.font = Constants.Label.Brand.font
        brandLabel.textColor = Constants.Label.Brand.textColor
        titleLabel.font = Constants.Label.Title.font
        titleLabel.textColor = Constants.Label.Title.textColor
        descriptionLabel.font = Constants.Label.Description.font
        descriptionLabel.numberOfLines = Constants.Label.Description.lines
        descriptionLabel.textColor = Constants.Label.Description.textColor
        priceLabel.font = Constants.Label.Price.font
        priceLabel.textColor = Constants.Label.Price.textColor
        productImageView.layer.cornerRadius = Constants.ImageView.radius
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
        firstStackView.addArrangedSubview(secondStackView)
        firstStackView.addArrangedSubview(productImageView)
        let productImageConstraints = [
            productImageView.widthAnchor.constraint(equalToConstant: Constants.ImageView.width),
            productImageView.heightAnchor.constraint(equalToConstant: Constants.ImageView.height)
        ]
        secondStackView.addArrangedSubview(brandLabel)
        secondStackView.addArrangedSubview(titleLabel)
        secondStackView.addArrangedSubview(descriptionLabel)
        secondStackView.addArrangedSubview(priceLabel)
        NSLayoutConstraint.activate(
            firstStackConstraints + productImageConstraints
        )
        setNeedsLayout()
        layoutIfNeeded()
    }

}
