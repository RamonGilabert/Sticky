import UIKit

public class StickyTable: UITableView {

  lazy var headerView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .ScaleAspectFill
    imageView.clipsToBounds = true

    return imageView
  }()

  var headerHeight: CGFloat = 0

  // MARK: - Initializers

  public init(image: UIImage?, height: CGFloat = 240) {
    super.init(frame: CGRectZero, style: .Plain)

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
    contentInset.top = headerHeight
    contentOffset.y = -headerHeight
  }
}

extension StickyTable {

  func scrollViewDidScroll(scrollView: UIScrollView) {
    print("Scrolling")
  }
}
