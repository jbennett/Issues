//
//  AddAccountCoordinator.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-22.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public class AddAccountCoordinator: Coordinator {

  let serviceListViewController = ServiceListViewController.fromStoryboard()

  public init() {
  }

  public func start(presentationContext: PresentationContext) {
    presentationContext.presentViewController(serviceListViewController, containerPreferrance: .Navigation)
  }

}
