//
//  GroupViewController.swift
//  Among
//
//  Created by snow on 2017. 1. 7..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController {
    var groups = realm.objects(Group.self)
    
    @IBOutlet weak var tableView: UITableView! {
        didSet { tableView.delegate = self }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "navigation-title"))
        //print("groupCount>>\(groups.count)>>groups>>\(groups)")
    }
    
}

extension GroupViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5//groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupTableViewCell
//        cell.groupNameLabel.text = groups[indexPath.row].name
//        cell.entryCountLabel.text = String(groups[indexPath.row].entryCount)
//        let completionPercent = groups[indexPath.row].completionPercent
//        cell.completionPercentLabel.text = String(completionPercent)
//        let rate = 1 - 0.01 * CGFloat(completionPercent)
//        cell.completionPercentImageView.frame = CGRect(origin: CGPoint(x: cell.bounds.origin.x, y: cell.bounds.origin.y + cell.completionPercentView.frame.height * rate) , size: CGSize(width: cell.completionPercentView.frame.width, height: cell.completionPercentView.frame.height))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

//class GroupCell: UITableViewCell {
    
//}
