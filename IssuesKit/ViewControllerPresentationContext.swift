//
//  ViewControllerPresentationContext.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-24.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import UIKit

public class ViewControllerPresentationContext: PresentationContext {

  let viewController: UIViewController

  public init(viewController: UIViewController) {
    self.viewController = viewController
  }

  public func showCoordinator(coordinator: Coordinator) {
    viewController.showViewController(coordinator.rootViewController(), sender: nil)
  }

  public func showDetailCoordinator(coordinator: Coordinator) {
    viewController.showDetailViewController(coordinator.rootViewController(), sender: nil)
  }

  public func presentCoordinator(coordinator: Coordinator, containerPreferrance: PreferredPresentationContainer) {
    if let container = containerPreferrance.containerController() {
      container.showViewController(coordinator.rootViewController(), sender: nil)
      viewController.presentViewController(container, animated: true, completion: nil)
    } else {
      viewController.presentViewController(coordinator.rootViewController(), animated: true, completion: nil)
    }
  }

  public func dismissCoordinator(coordinator: Coordinator) {
    viewController.dismissViewControllerAnimated(true, completion: nil)
  }

}
