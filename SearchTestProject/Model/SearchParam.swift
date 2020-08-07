//
//  SearchParam.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/6/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import Foundation

struct GitHubSearchResult: Codable {
    
    var company_logo:   String?
    var company:          String?
    var company_url:    String?
}

struct ITunesListResult: Codable {
    
    let name:   String
    let detail: String
    let image:  URL
}
