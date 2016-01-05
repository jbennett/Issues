//
//  LoginViewController.swift
//  Issues
//
//  Created by Jonathan Bennett on 2016-01-04.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import UIKit

public protocol ServiceLoginViewController {

  var delegate: ServiceLoginViewControllerDelegate? { get set }

  static func fromStoryboard() -> UIViewController

}

public protocol ServiceLoginViewControllerDelegate: class {

  func didAuthenticateService(service: TrackingService)

}
