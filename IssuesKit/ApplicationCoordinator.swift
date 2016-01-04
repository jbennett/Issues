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

    let accountListCoordinator = AccountListCoordinator()
    accountListCoordinator.delegate = self
    accountListCoordinator.start(presentationContext)
    coordinators.append(accountListCoordinator)
  }

}

extension ApplicationCoordinator: AccountListCoordinatorDelegate {

  public func didUpdateAccountListCoordinator(accountListCoordinator: AccountListCoordinator) {
    guard accountListCoordinator.accountCount == 0 else { return }

    let addAccountCoordinator = AddAccountCoordinator()
    addAccountCoordinator.start(presentationContext)
    coordinators.append(addAccountCoordinator)
  }

}
