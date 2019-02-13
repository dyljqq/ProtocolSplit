//
//  ObjectDataSource.swift
//  ProtocolSplit
//
//  Created by 季勤强 on 2019/2/13.
//  Copyright © 2019 dyljqq. All rights reserved.
//

import UIKit

class ObjectDataSource<T>: NSObject, UITableViewDataSource, UITableViewDelegate {
  
  let items: [T]
  
  var itemSelectClosure: ((T) -> Void)?
  
  init(_ items: [T]) {
    self.items = items
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    let item = items[indexPath.row] as! String
    cell.textLabel?.text = item
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 44.0
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
    itemSelectClosure?(items[indexPath.row])
  }
  
}
