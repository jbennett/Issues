//
//  SerivceLoginViewControllerFactory.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-25.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public class ServiceLoginViewControllerFactory {

  public func viewControllerForService(service: TrackingService) -> UIViewController {
    switch service {
    case .Github: return GithubLoginViewController.fromStoryboard()
    case .Sifter: return SifterLoginViewController.fromStoryboard()
    }
  }

}
