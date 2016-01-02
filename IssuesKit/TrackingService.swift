//
//  TrackingService.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-25.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public enum TrackingService: String {
  case Github
  case Sifter

  public func title() -> String {
    switch self {
    case .Sifter: return "Sifter"
    case .Github: return "Github"
    // default: return self.rawValue
    }
  }

  public func logoName() -> String {
    switch self {
    case .Sifter: return "Sifter Logo"
    case .Github: return "Github Logo"
    }
  }

  public func logoImage() -> UIImage {
    let bundle = NSBundle(forClass: ServiceTypeTableViewCell.self)
    return UIImage(named: self.logoName(), inBundle: bundle, compatibleWithTraitCollection: nil)!
  }
}
