//
//  AccountListCoordinator.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-24.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public class AccountListCoordinator: Coordinator {

  public var accountCount: Int = 0

  public init() {
  }

  var accountListViewController = AccountListViewController()
  public func rootViewController() -> UIViewController {
    return accountListViewController
  }

  public func start(presentationContext: PresentationContext) {
    presentationContext.showViewController(self.rootViewController())
  }

}
