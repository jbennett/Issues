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
  case Unspecified

  public func containerController() -> UIViewController? {
    switch self {
    case .Navigation: return UINavigationController()
    case .Unspecified: return nil
    }
  }
}

public protocol PresentationContext {

  func showCoordinator(coordinator: Coordinator)
  func showDetailCoordinator(coordinator: Coordinator)

  func presentCoordinator(coordinator: Coordinator, containerPreferrance: PreferredPresentationContainer)
  func dismissCoordinator(coordinator: Coordinator)

}
