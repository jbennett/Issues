//
//  ApplicationCoordinator.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-22.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import UIKit

public class ApplicationCoordinator {

  let rootViewController: ApplicationViewController
  let window: UIWindow
  var coordinators = CoordinatorStack()

  lazy var presentationContext: PresentationContext = {
    return ViewControllerPresentationContext(viewController: self.rootViewController)
  }()

  public init(window: UIWindow) {
    self.window = window
    rootViewController = ApplicationViewController()
    rootViewController.rootViewController = UINavigationController()
  }

  public func start() {
    window.rootViewController = rootViewController
    let presentationContext = self.presentationContext

    let accountListCoordinator = AccountListCoordinator()
    coordinators.append(accountListCoordinator)
    accountListCoordinator.start(presentationContext)

    if accountListCoordinator.accountCount == 0 {
      let addAccountCoordinator = AddAccountCoordinator()
      coordinators.append(addAccountCoordinator)
      addAccountCoordinator.start(presentationContext)
    }
  }

}
