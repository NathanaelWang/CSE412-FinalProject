//
//  ReviewViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit



class ReviewViewController: UIViewController
{
    let review = ["Iphone 14, 3 Stars",
                  "MacBookPro13, 3 Stars",
                  "Iphone 14 ProMax, 4 Stars",
                  "ONEPLUS10T, 4.2 Stars",
                  "GooglePixel6, 4.3 Stars",
                  "GalaxyS22, 4.3 Stars",
                  "Iphone 13, 4.5 Stars",
                  "Iphon 13 Pro, 4.5 Stars",
                  "GalaxyS22Ultra, 4.6 Stars",
                  "GalaxyS22Ultra, 4.6 Stars",
                  "ASUSZephyrus, 4.6 Stars",
                  "Ipone 14 Pro, 4.7 Stars",
                  ]
    
    override func viewDidLoad()
    {
        title = "Sorting by Review"
        super.viewDidLoad()
        
    }
}

extension ReviewViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return review.count
    }
        
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = review[indexPath.row]
        return cell!
    }
}
