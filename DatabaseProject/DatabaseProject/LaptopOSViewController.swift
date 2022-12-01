//
//  LaptopOSViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class LaptopOSViewController: UIViewController
{
    let laptopOS = ["MacBookPro13, MacOS",
                   "ASUSZephyrus, Windows"]
    
    override func viewDidLoad()
    {
        title = "Laptop OS"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension LaptopOSViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return laptopOS.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = laptopOS[indexPath.row]
        return cell!
    }
}
