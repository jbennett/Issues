//
//  PresentationContext.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-24.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public enum PreferredPresentationContainer {
  case Navigation
  case None

  public func containerController() -> UIViewController? {
    switch self {
    case .Navigation: return UINavigationController()
    case .None: return nil
    }
  }
}

public protocol PresentationContext {

  func showViewController(viewController: UIViewController)
  func showDetailViewController(viewController: UIViewController)

  func presentViewController(viewController: UIViewController, containerPreferrance: PreferredPresentationContainer)
  func dismissViewController(viewController: UIViewController)

}
