//
//  PriceViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class PriceViewController: UIViewController
{
    let price = ["GooglePixel6, $476",
                 "Iphone 13, $629",
                 "ONEPLUS10T, $649",
                 "Iphon 13 Pro, $699",
                 "GalaxyS22, $749",
                 "Iphone 14, $799",
                 "Ipone 14 Pro, $999",
                 "Iphone 14 ProMax, $1599",
                 "GalaxyS22Ultra, $1029",
                 "GalaxyS22Ultra, $1299",
                 "MacBookPro13, $1299",
                 "ASUSZephyrus, $1149"
                ]
    
    override func viewDidLoad()
    {
        title = "Sorting by Price"
        super.viewDidLoad()
    }
}

extension PriceViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return price.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = price[indexPath.row]
        return cell!
    }
}

