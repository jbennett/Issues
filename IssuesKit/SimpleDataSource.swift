//
//  SimpleDataSource.swift
//  Issues
//
//  Created by Jonathan Bennett on 2015-12-25.
//  Copyright © 2015 Jonathan Bennett. All rights reserved.
//

import Foundation

public class SimpleDataSource<Element>: NSObject, UICollectionViewDataSource, UITableViewDataSource {

  let cellIdentifier: String
  let items: [Element]

  public init(items: [Element], cellIdentifier: String) {
    self.items = items
    self.cellIdentifier = cellIdentifier
  }

  func itemAtIndexPath(indexPath: NSIndexPath) -> Element {
    precondition(indexPath.row >= 0 && indexPath.row < items.count)

    return items[indexPath.row]
  }

  // Mark: UICollectionViewDataSource
  public var collectionCellConfigurer: ((UICollectionViewCell, Element) -> Void)?

  public func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return items.count
  }

  public func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentifier, forIndexPath: indexPath)
    let item = itemAtIndexPath(indexPath)
    collectionCellConfigurer?(cell, item)
    return cell
  }

  // Mark: UITableViewDataSource
  public var tableCellConfigurer: ((UITableViewCell, Element) -> Void)?

  public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }

  public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }

  public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
    let item = itemAtIndexPath(indexPath)
    tableCellConfigurer?(cell, item)
    return cell
  }

}
