//
//  LaptopStorageViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class LaptopStorageViewController: UIViewController
{
    let laptopStorage = ["MacBookPro13, 256GB",
                   "ASUSZephyrus, 512GB"]

    override func viewDidLoad()
    {
        title = "Laptop Storage"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension LaptopStorageViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return laptopStorage.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = laptopStorage[indexPath.row]
        return cell!
    }
}
