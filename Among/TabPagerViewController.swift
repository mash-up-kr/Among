//
//  TabPagerViewController.swift
//  Among
//
//  Created by snow on 2017. 1. 7..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TabPagerViewController: ButtonBarPagerTabStripViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settings.style.buttonBarItemTitleColor = .black
        buttonBarView.backgroundColor = .white
        buttonBarView.selectedBar.backgroundColor = .black
        
        navigationItem.title = "버킷리스트"
    }
    
    // MARK: - PagerTabStripDataSource
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let bucketListViewController = UIStoryboard.init(name: "BucketListViewController", bundle: nil).instantiateViewController(withIdentifier: "BucketListViewController") as! BucketListViewController
        let completeBucketListViewController = UIStoryboard.init(name: "CompleteBucketListViewController", bundle: nil).instantiateViewController(withIdentifier: "CompleteBucketListViewController") as! CompleteBucketListViewController
        return [bucketListViewController, completeBucketListViewController]
    }
    
    override func configureCell(_ cell: ButtonBarViewCell, indicatorInfo: IndicatorInfo) {
        super.configureCell(cell, indicatorInfo: indicatorInfo)
        cell.backgroundColor = .clear
    }
    
}
