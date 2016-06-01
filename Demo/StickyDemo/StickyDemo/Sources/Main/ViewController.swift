import UIKit
import Sticky

class ViewController: UIViewController {

  lazy var tableView: StickyTable = StickyTable(image: UIImage(named: "header-view"))

  override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(tableView)

    setupTableView()
    setupConstraints()
  }

  // MARK: - Setup

  func setupTableView() {
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.rowHeight = UITableViewAutomaticDimension
    tableView.estimatedRowHeight = UITableViewAutomaticDimension
    tableView.backgroundColor = UIColor.whiteColor()
    tableView.separatorStyle = .None
    tableView.delegate = self
    tableView.dataSource = self

    tableView.registerClass(
      TableCell.self, forCellReuseIdentifier: TableCell.reusableIdentifier)
  }

  // MARK: - Constraints

  func setupConstraints() {
    NSLayoutConstraint.activateConstraints([
      tableView.widthAnchor.constraintEqualToAnchor(view.widthAnchor),
      tableView.heightAnchor.constraintEqualToAnchor(view.heightAnchor),
      tableView.widthAnchor.constraintEqualToAnchor(view.widthAnchor),
      tableView.widthAnchor.constraintEqualToAnchor(view.widthAnchor)
      ])
  }
}

extension ViewController: UITableViewDelegate {

  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
}

extension ViewController: UITableViewDataSource {

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return TableViewModel.cells.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCellWithIdentifier(TableCell.reusableIdentifier)
      as? TableCell else { return UITableViewCell() }

    cell.configureCell(TableViewModel.cells[indexPath.row])

    return cell
  }
}
