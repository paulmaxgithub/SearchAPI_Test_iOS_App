//
//  CustomSearchBar.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/6/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

extension ViewController: UISearchBarDelegate {
    
        //MARK: - SEARCH BAR (logic)
    func searchBar(_ searchBar: UISearchBar, tableView: UITableView, textDidChange searchText: String) {
               guard !searchText.isEmpty else {
                   currentSearchResult = iTunesSearchResult
                   tableView.reloadData()
                   return
               }
               currentSearchResult = iTunesSearchResult.filter({ iTunesSearchResult -> Bool in
                   return iTunesSearchResult.name.lowercased().contains(searchText.lowercased())
               })
               tableView.reloadData()
           }
}
