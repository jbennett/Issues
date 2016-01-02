//
//  AddAccountViewController.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-25.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import UIKit

public class AddAccountViewController: UIViewController {

  static func fromStoryboard() -> AddAccountViewController {
    let storyboard = UIStoryboard(name: "AddAccount", bundle: NSBundle(forClass: AddAccountViewController.self))

    if let viewController = storyboard.instantiateInitialViewController() as? AddAccountViewController {
      return viewController
    } else {
      assertionFailure("Failed to init AddAccountViewController from storyboard")
      return AddAccountViewController()
    }
  }
}
