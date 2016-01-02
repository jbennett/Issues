//
//  ApplicationViewController.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-23.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import UIKit

public class ApplicationViewController: UIViewController {

  public var rootViewController: UIViewController? {
    didSet {
      if let oldValue = oldValue {
        oldValue.willMoveToParentViewController(nil)
        oldValue.view.removeFromSuperview()
        oldValue.removeFromParentViewController()
      }

      if let rootViewController = rootViewController {
        addChildViewController(rootViewController)
        rootViewController.view.frame = view.bounds
        view.addSubview(rootViewController.view)
        rootViewController.didMoveToParentViewController(self)
      }
    }
  }

  private var errorViewController: UIViewController?

  // swiftlint:disable variable_name_min_length
  public override func showViewController(vc: UIViewController, sender: AnyObject?) {
    rootViewController?.showViewController(vc, sender: sender)
  }
  // swiftlint:enable variable_name_min_length

}
