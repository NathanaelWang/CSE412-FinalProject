//
//  CategoryViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class CategoryViewController: UIViewController
{
    let category = ["MacBookPro13, Work",
                   "ASUSZephyrus, Gaming"]

    override func viewDidLoad()
    {
        title = "Laptop Category"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension CategoryViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return category.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = category[indexPath.row]
        return cell!
    }
}
