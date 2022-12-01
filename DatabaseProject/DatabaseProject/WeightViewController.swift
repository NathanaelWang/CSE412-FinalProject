//
//  WeightViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class WeightViewController: UIViewController
{
    let weight = ["GalaxyS22, 5.89oz",
                   "Iphone 14, 6.07oz",
                   "Iphone 13, 6.14oz",
                   "Iphon 13 Pro, 6.24oz",
                   "ONEPLUS10T, 7.2oz",
                   "Ipone 14 Pro, 7.27oz",
                   "GooglePixel6, 7.3oz",
                   "Iphone 14 ProMax, 8.47oz",
                   "GalaxyS22Ultra, 8oz",
                   "GalaxyS22Ultra, 8oz",
                   "MacBookPro13, 48oz",
                   "ASUSZephyrus, 58.24oz"]
    
    override func viewDidLoad()
    {
        title = "Sorting by Weight"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension WeightViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return weight.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = weight[indexPath.row]
        return cell!
    }
}
