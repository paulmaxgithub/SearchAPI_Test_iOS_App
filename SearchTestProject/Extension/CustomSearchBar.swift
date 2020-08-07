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
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        guard !searchText.isEmpty else {
            currentList = gitHubSearchResult
            tableView.reloadData()
            return
        }
        
        currentList = gitHubSearchResult.filter({ gitHubSearchResult -> Bool in
            return gitHubSearchResult.company!.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }
}
