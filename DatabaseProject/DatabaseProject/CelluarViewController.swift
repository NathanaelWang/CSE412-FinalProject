//
//  CelluarViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class CelluarViewController: UIViewController
{
    let celluar = ["Iphone 13, AT&T",
                   "Iphon 13 Pro, AT&T",
                   "Iphone 14, T-Mobile",
                   "GalaxyS22, T-Mobile",
                   "Iphone 14 ProMax, Verizon",
                   "GalaxyS22Ultra, Verizon",
                   "Ipone 14 Pro, Unlock",
                   "ONEPLUS10T, Unlock",
                   "GalaxyS22Ultra, Unlock",
                   "GooglePixel6, Unlock"]
    
    override func viewDidLoad()
    {
        title = "Phone Celluar"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension CelluarViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return celluar.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = celluar[indexPath.row]
        return cell!
    }
}
