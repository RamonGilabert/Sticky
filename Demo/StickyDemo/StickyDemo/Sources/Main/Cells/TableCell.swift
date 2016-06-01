import UIKit

class TableCell: UITableViewCell {

  lazy var avatarView: UIImageView = {
    let imageView = UIImageView()
    return imageView
  }()

  lazy var titleLabel: UILabel = {
    let label = UILabel()
    return label
  }()

  lazy var subtitleLabel: UILabel = {
    let label = UILabel()
    return label
  }()

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    [avatarView, titleLabel, subtitleLabel].forEach { addSubview($0) }
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Configure

  func configureCell(viewModel: TableViewModel) {
    avatarView.image = viewModel.image
    titleLabel.text = viewModel.title
    subtitleLabel.text = viewModel.subtitle

    setupConstraints()
  }

  // MARK: - Setup constraints

  func setupConstraints() {
    
  }
}
