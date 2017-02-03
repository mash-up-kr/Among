//
//  BucketListViewController.swift
//  Among
//
//  Created by snow on 2017. 1. 7..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class BucketListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet { tableView.delegate = self }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension BucketListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BucketCell", for: indexPath)
        return cell
    }
    
}

class BucketCell: UITableViewCell {
    
}
