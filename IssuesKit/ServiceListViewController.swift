//
//  ServiceListViewController.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-25.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import UIKit

public class ServiceListViewController: UITableViewController {

  public weak var delegate: ServiceListViewControllerDelegate?

  let cellConfigurer = ServiceCellConfigurer()
  var dataSource: SimpleDataSource<TrackingService>?

  public override func viewDidLoad() {
    super.viewDidLoad()

    let services: [TrackingService] = [.Github, .Sifter]
    let dataSource = SimpleDataSource<TrackingService>(items: services, cellIdentifier: "ServiceCell")
    dataSource.tableCellConfigurer = cellConfigurer.configureCell

    self.dataSource = dataSource
    self.tableView.dataSource = dataSource
  }

  public override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    guard let service = dataSource?.itemAtIndexPath(indexPath) else { return }
    delegate?.serviceList(self, didSelectService: service)
  }

  static func fromStoryboard() -> ServiceListViewController {
    let storyboard = UIStoryboard(name: "AddAccount", bundle: NSBundle(forClass: ServiceListViewController.self))

    if let viewController = storyboard.instantiateViewControllerWithIdentifier("ServiceListViewController") as? ServiceListViewController {
      return viewController
    } else {
      assertionFailure("Failed to init ServiceListViewController from storyboard")
      return ServiceListViewController()
    }
  }

  // Mark: Interface
  @IBOutlet var cancelButton: UIBarButtonItem!
}

public protocol ServiceListViewControllerDelegate: class {

  func serviceListDidCancel(serviceListViewController: ServiceListViewController)
  func serviceList(serviceListViewController: ServiceListViewController, didSelectService: TrackingService)

}
