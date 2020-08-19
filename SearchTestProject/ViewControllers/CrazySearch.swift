//
//  CrazySearch.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/5/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

class CrazySearch: UIViewController {
    
    //var gitHubSearchResult: [GitHubSearchResult] = []
    var iTunesSearchResult: [ITunesSearchResult] = []
    
    var searchObject = ""
    var searchBarIsEmpty: Bool {
        guard let text = searchBar.text else { return false }
        return text.isEmpty
    }
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        addSegmentedControl() // UISegmentedControl to NavigationController
    }
    
    func loadArtistDiscography() {
        
        if !searchBarIsEmpty {
            
            var search = searchBar.text
            
            //check and replace white spaces with plus in astring
            if search!.hasWhiteSpace && search?.first != " " && search?.last != " " {
                search = searchBar.text?.replacingOccurrences(of: " ", with: "+")
            }
            
            
            guard let url = URL(string: searchObject + search!) else { return }
            
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data else { return }
                
                do {
                    let info = try JSONDecoder().decode(ITunesResults.self, from: data)
                    self.iTunesSearchResult = info.results
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                } catch let error { print (error) }
            }.resume()
        }
    }
}

