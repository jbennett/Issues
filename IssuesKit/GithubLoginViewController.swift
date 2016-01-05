//
//  GithubLoginViewController.swift
//  Issues
//
//  Created by Jonathan Bennett on 2016-01-04.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import UIKit

public class GithubLoginViewController: UIViewController, ServiceLoginViewController {

  public var delegate: ServiceLoginViewControllerDelegate?

  public override func viewDidLoad() {
    super.viewDidLoad()
    title = "Log into Github"
  }

  public static func fromStoryboard() -> UIViewController {
    return GithubLoginViewController()
  }
}
