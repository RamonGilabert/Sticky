import UIKit

public class StickyTable: UITableView {

  lazy var headerView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .ScaleAspectFit

    return imageView
  }()

  var headerHeight: CGFloat = 0

  // MARK: - Initializers

  public init(image: UIImage?, height: CGFloat = 220) {
    super.init(frame: CGRectZero, style: .Grouped)

    headerView.image = image
    headerHeight = height

    setupTableView()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Configuration

  func setupTableView() {
    addSubview(headerView)

    headerView.frame = CGRect(
      x: 0, y: -headerHeight, width: UIScreen.mainScreen().bounds.width, height: headerHeight)
    contentOffset.y = headerHeight
  }
}

extension StickyTable: UIScrollView {
  
}
