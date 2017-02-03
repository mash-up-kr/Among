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
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "add", style: .plain, target: self, action: #selector(addButtonTapped(sender: )))
//        let btn1 = UIButton(type: .custom)
//        btn1.setImage(UIImage(named: "imagename"), for: .normal)
//        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
//        btn1.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
//        let item1 = UIBarButtonItem(customView: btn1)
// 
//        self.navigationItem.setRightBarButtonItems([item1], animated: true)
        let addButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(BucketListViewController.addButtonTapped))
        navigationItem.rightBarButtonItem = addButton
    }
    
    
    func addButtonTapped() {
        print("addButtonTapped")
        let storyboard = UIStoryboard(name: "MakeBucketViewController", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "MakeBucketViewController")
        self.present(controller, animated: true, completion: nil)
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
