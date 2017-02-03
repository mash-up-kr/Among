//
//  BucketListViewController.swift
//  Among
//
//  Created by snow on 2017. 1. 7..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class BucketListViewController: UITableViewController {
    
    // MARK: - Properties
    
    var itemInfo: IndicatorInfo = "어몽"
    
    // MARK: - Override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let addButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(BucketListViewController.addButtonTapped))
        navigationItem.rightBarButtonItem = addButton
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BucketCell", for: indexPath)
        return cell
    }
    
    func addButtonTapped() {
        let storyboard = UIStoryboard(name: "MakeBucketViewController", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "MakeBucketViewController")
        self.present(controller, animated: true, completion: nil)
    }
    
}

// MARK: - IndicatorInfoProvider

extension BucketListViewController: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
}

class BucketCell: UITableViewCell {
    
}
