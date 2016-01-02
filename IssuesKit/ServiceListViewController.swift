//
//  ServiceListViewController.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-25.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import UIKit

public class ServiceListViewController: UITableViewController {

  var dataSource: SimpleDataSource<TrackingService>?

  public override func viewDidLoad() {
    super.viewDidLoad()

    let services: [TrackingService] = [.Github, .Sifter]
    let dataSource = SimpleDataSource<TrackingService>(items: services, cellIdentifier: "ServiceCell")
    dataSource.tableCellConfigurer = { cell, item in
      if let cell = cell as? ServiceTypeTableViewCell {
        cell.textLabel?.text = item.title()
      } else {
        print("crap")
      }
    }
    self.dataSource = dataSource
    self.tableView.dataSource = dataSource
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

}
