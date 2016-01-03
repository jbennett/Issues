//
//  ViewControllerPresentationContext.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-24.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import UIKit

public class ViewControllerPresentationContext: PresentationContext {

  let contextViewController: UIViewController

  public init(viewController: UIViewController) {
    contextViewController = viewController
  }

  public func showViewController(viewController: UIViewController) {
    contextViewController.showViewController(viewController, sender: nil)
  }

  public func showDetailViewController(viewController: UIViewController) {
    contextViewController.showDetailViewController(viewController, sender: nil)
  }

  public func presentViewController(viewController: UIViewController, containerPreferrance: PreferredPresentationContainer) {
    if let container = containerPreferrance.containerController() {
      container.showViewController(viewController, sender: nil)
      contextViewController.presentViewController(container, animated: true, completion: nil)
    } else {
      contextViewController.presentViewController(viewController, animated: true, completion: nil)
    }
  }

  public func dismissViewController(viewController: UIViewController) {
    contextViewController.dismissViewControllerAnimated(true, completion: nil)
  }

}
