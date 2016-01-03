//
//  AppDelegate.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-22.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import UIKit
import IssuesKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var applicationCoordinator: ApplicationCoordinator?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    // Override point for customization after application launch.

    let window = UIWindow(frame: UIScreen.mainScreen().bounds)
    window.makeKeyAndVisible()
    self.window = window

    applicationCoordinator = ApplicationCoordinator(window: window)
    applicationCoordinator?.start()

    return true
  }

}
