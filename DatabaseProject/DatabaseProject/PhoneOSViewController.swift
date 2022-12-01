//
//  PhoneOSViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class PhoneOSViewController: UIViewController
{
    let phoneOS = ["Iphone 13, IOS",
                   "Iphon 13 Pro, IOS",
                   "Iphone 14, IOS",
                   "Iphone 14 ProMax, IOS",
                   "Ipone 14 Pro, IOS",
                   "GalaxyS22, Android",
                   "GalaxyS22Ultra, Android",
                   "ONEPLUS10T, Android",
                   "GalaxyS22Ultra, Android",
                   "GooglePixel6, Android"]
    
    override func viewDidLoad()
    {
        title = "Phone OS"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension PhoneOSViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return phoneOS.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = phoneOS[indexPath.row]
        return cell!
    }
}

