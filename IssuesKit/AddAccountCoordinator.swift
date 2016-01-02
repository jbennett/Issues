//
//  AddAccountCoordinator.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-22.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public class AddAccountCoordinator: Coordinator {

  public init() {
  }

  public func rootViewController() -> UIViewController {
    return ServiceListViewController.fromStoryboard()
  }

  public func start(presentationContext: PresentationContext) {
    presentationContext.presentCoordinator(self, containerPreferrance: .Navigation)
  }

}
