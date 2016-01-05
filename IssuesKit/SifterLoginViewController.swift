//
//  SifterLoginViewController.swift
//  Issues
//
//  Created by Jonathan Bennett on 2016-01-04.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import UIKit

public class SifterLoginViewController: UIViewController, ServiceLoginViewController {

  public var delegate: ServiceLoginViewControllerDelegate?

  public static func fromStoryboard() -> UIViewController {
    let bundle = NSBundle(forClass: self)
    let storyboard = UIStoryboard(name: "AddAccount", bundle: bundle)

    if let viewController = storyboard.instantiateViewControllerWithIdentifier("SifterLoginViewController") as? SifterLoginViewController {
      return viewController
    } else {
      assertionFailure("Failed to init SifterLoginViewController from storyboard")
      return AddAccountViewController()
    }
  }

}
