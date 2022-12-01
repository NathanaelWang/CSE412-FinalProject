//
//  PhoneStorageViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class PhoneStorageViewController: UIViewController
{
    let phoneStorage = ["Iphone 13, 128GB",
                        "Iphon 13 Pro, 128GB",
                        "ONEPLUS10T, 128GB",
                        "GooglePixel6, 128GB",
                        "GalaxyS22, 256GB",
                        "GalaxyS22Ultra, 256GB",
                        "Ipone 14 Pro, 256GB",
                        "GalaxyS22Ultra, 256GB",
                        "Iphone 14, 512GB",
                        "Iphone 14 ProMax, 1TB"]
    
    override func viewDidLoad()
    {
        title = "Phone Storage"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension PhoneStorageViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return phoneStorage.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = phoneStorage[indexPath.row]
        return cell!
    }
}
