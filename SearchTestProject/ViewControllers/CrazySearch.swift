//
//  CrazySearch.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/5/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var url = ""
    
    var gitHubSearchResult: [GitHubSearchResult] = []
    var currentList:        [GitHubSearchResult] = []
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        addSegmentedControl()
    }
    
    func load() {
        
    }
}

