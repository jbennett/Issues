//
//  CoordinatorStack.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-24.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public class CoordinatorStack {

  var coordinators = [Coordinator]()

  public init() {

  }

  public func append(coordinator: Coordinator) {
    coordinators.append(coordinator)
  }

}
