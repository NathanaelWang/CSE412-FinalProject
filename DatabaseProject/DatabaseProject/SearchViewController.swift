//
//  SearchViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/30/22.
//

import UIKit

class SearchViewController: UIViewController
{
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tbView: UITableView!
    
    let product = ["Iphone 13, $629, AT&T, 128GB, IOS",
                   "Iphon 13 Pro, $699, AT&T, 128GB, IOS",
                   "Iphone 14, $799, T-Mobile, 512GB, IOS",
                   "Ipone 14 Pro, $999, Unlock, 256GB, IOS",
                   "Iphone 14 ProMax, $1599, Verizon, 1TB, IOS ",
                   "ONEPLUS10T, $649, Unlock, 128GB, Android",
                   "GalaxyS22, $749, T-Mobile, 256GB, Android",
                   "GalaxyS22Ultra, $1070, Verizon, 256GB, Android",
                   "GalaxyS22Ultra, $1299, Unlock, 256GB, Android",
                   "GooglePixel6, $476, Unlock, 128GB, Android",
                   "MacBookPro13, $1299, Work, 256GB, MacOS",
                   "ASUSZephyrus, $1149, Gaming, 512GB, Widnows"]

    var searchProduct = [String]()
    var searching = false
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Searching"
        // Do any additional setup after loading the view.
    }
}

    extension SearchViewController: UITableViewDataSource, UITableViewDelegate
    {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            if searching
            {
                return searchProduct.count
            }
            else
            {
                return product.count
            }
        }
        
        func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
            if searching
            {
                cell?.textLabel?.text = searchProduct[indexPath.row]
            }
            else
            {
                cell?.textLabel?.text = product[indexPath.row]
            }
            return cell!
        }
    }

extension SearchViewController: UISearchBarDelegate
{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        searchProduct = product.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tbView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
    {
        searching = false
        searchBar.text = ""
        tbView.reloadData()
    }
}
