import UIKit

class TableCell: UITableViewCell {

  static let reusableIdentifier = "TableCellReusableIdentifier"

  struct Dimensions {
    struct Avatar {
      static let size: CGFloat = 100
      static let offset: CGFloat = 14
    }

    struct Text {
      static let offset: CGFloat = 14
    }
  }

  lazy var avatarView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .ScaleAspectFit
    imageView.clipsToBounds = true
    imageView.layer.cornerRadius = Dimensions.Avatar.size / 2

    return imageView
  }()

  lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.numberOfLines = 0
    label.font = UIFont.boldSystemFontOfSize(16)

    return label
  }()

  lazy var subtitleLabel: UILabel = {
    let label = UILabel()
    label.numberOfLines = 0
    label.font = UIFont.systemFontOfSize(14)

    return label
  }()

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    [avatarView, titleLabel, subtitleLabel].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      addSubview($0)
    }

    selectionStyle = .None
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Configure

  func configureCell(viewModel: TableViewModel) {
    avatarView.image = viewModel.image
    titleLabel.text = viewModel.title
    subtitleLabel.text = viewModel.subtitle

    [titleLabel, subtitleLabel].forEach { $0.sizeToFit() }

    setupConstraints()
  }

  // MARK: - Setup constraints

  func setupConstraints() {
    NSLayoutConstraint.activateConstraints([
      avatarView.widthAnchor.constraintEqualToConstant(Dimensions.Avatar.size),
      avatarView.heightAnchor.constraintEqualToConstant(Dimensions.Avatar.size),
      avatarView.topAnchor.constraintEqualToAnchor(topAnchor, constant: Dimensions.Avatar.offset),
      avatarView.leftAnchor.constraintEqualToAnchor(leftAnchor, constant: Dimensions.Avatar.offset),

      titleLabel.topAnchor.constraintEqualToAnchor(topAnchor, constant: Dimensions.Text.offset),
      titleLabel.rightAnchor.constraintLessThanOrEqualToAnchor(leftAnchor, constant: -Dimensions.Text.offset),
      titleLabel.leftAnchor.constraintEqualToAnchor(avatarView.rightAnchor, constant: Dimensions.Text.offset),

      subtitleLabel.topAnchor.constraintEqualToAnchor(titleLabel.bottomAnchor, constant: Dimensions.Text.offset),
      subtitleLabel.rightAnchor.constraintLessThanOrEqualToAnchor(leftAnchor, constant: -Dimensions.Text.offset),
      subtitleLabel.leftAnchor.constraintEqualToAnchor(avatarView.rightAnchor, constant: Dimensions.Text.offset),
      subtitleLabel.bottomAnchor.constraintEqualToAnchor(subtitleLabel.bottomAnchor, constant: -Dimensions.Text.offset)
      ])
  }
}
