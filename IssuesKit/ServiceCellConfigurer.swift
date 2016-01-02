//
//  ServiceCellConfigurer.swift
//  Issues
//
//  Created by Jonathan Bennett on 2016-01-02.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import UIKit

class ServiceCellConfigurer {

  func configureCell(cell: UITableViewCell, service: TrackingService) {
    if let cell = cell as? ServiceTypeTableViewCell {
      cell.textLabel?.text = service.title()
    } else {
      print("crap")
    }
  }

}
