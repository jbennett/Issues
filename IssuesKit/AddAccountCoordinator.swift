//
//  AddAccountCoordinator.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-22.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public class AddAccountCoordinator: Coordinator {

  let containerViewController: UINavigationController


  public init() {
    containerViewController = UINavigationController()
  }

  public func start(presentationContext: PresentationContext) {
    let serviceListViewController = ServiceListViewController.fromStoryboard()
    serviceListViewController.delegate = self
    containerViewController.showViewController(serviceListViewController, sender: nil)
    presentationContext.presentViewController(containerViewController, containerPreferrance: .None)
  }

}

extension AddAccountCoordinator: ServiceListViewControllerDelegate {

  public func serviceList(serviceListViewController: ServiceListViewController, didSelectService service: TrackingService) {
    let loginViewController = ServiceLoginViewControllerFactory().viewControllerForService(service)

    containerViewController.showViewController(loginViewController, sender: nil)
  }

  public func serviceListDidCancel(serviceListViewController: ServiceListViewController) {
    print("cancelled")
  }

}
