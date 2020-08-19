//
//  CustomSearchBar.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/6/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

extension CrazySearch: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        loadArtistDiscography()
        searchBar.resignFirstResponder()
    }
}
