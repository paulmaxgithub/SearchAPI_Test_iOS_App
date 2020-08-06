//
//  ViewController.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/5/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var iTunesSearchResult: [ITunesListResult] = []
    var gitHubSearchResult: [GitHubListResult] = []
    var currentSearchResult: [ITunesListResult] = []
    
    @IBOutlet var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        addSegmentedControl()
    }
}

