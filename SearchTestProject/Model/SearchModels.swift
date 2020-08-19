//
//  SearchParam.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/6/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import Foundation

struct ITunesResults: Codable {
    
    let results: [ITunesSearchResult]
}

struct ITunesSearchResult: Codable {
    
    // specific parameters for search result in iTunes
    let artistName:     String?
    let trackName:      String?
    let collectionName: String?
    let artworkUrl100:  String?
}

//struct GitHubSearchResult: Codable {
//
//    // specific parameters for search result in GitHub
//
//    var company_logo:   String?
//    var company:        String?
//    var company_url:    String?
//}
