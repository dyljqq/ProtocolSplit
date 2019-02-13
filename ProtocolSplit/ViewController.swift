//
//  ViewController.swift
//  ProtocolSplit
//
//  Created by 季勤强 on 2019/2/13.
//  Copyright © 2019 dyljqq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var items = ["dyl", "jqq"]
  let dataSource: ObjectDataSource<String>
  
  lazy var tableView: UITableView = {
    let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
    tableView.delegate = self.dataSource
    tableView.dataSource = self.dataSource
    tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
    return tableView
  }()
  
  init() {
    self.dataSource = ObjectDataSource(items)
    super.init(nibName: nil, bundle: nil)
    view.addSubview(self.tableView)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


}

