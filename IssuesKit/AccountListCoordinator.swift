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
  weak public var delegate: AccountListCoordinatorDelegate?
  let accountListViewController = AccountListViewController()

  public init() {}

  public func start(presentationContext: PresentationContext) {
    presentationContext.showViewController(accountListViewController)
    delegate?.didUpdateAccountListCoordinator(self)
  }

}

public protocol AccountListCoordinatorDelegate: class {

  func didUpdateAccountListCoordinator(accountListCoordinator: AccountListCoordinator)

}
