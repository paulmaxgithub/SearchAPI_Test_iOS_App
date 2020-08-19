//
//  CustomTableView.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/6/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

extension CrazySearch: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iTunesSearchResult.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        cell.textLabel?.text = capitalize(text: iTunesSearchResult[indexPath.row].trackName!)
        cell.detailTextLabel?.text = iTunesSearchResult[indexPath.row].collectionName
        
        // imageview customizing
        cell.imageView?.layer.masksToBounds = true
        cell.imageView?.layer.cornerRadius = (cell.imageView?.frame.size.width)! / 2
        
        // get image from URL
        if let imageURL = URL(string: iTunesSearchResult[indexPath.row].artworkUrl100!) {
            if let data = try? Data(contentsOf: imageURL) {
                cell.imageView?.image = UIImage(data: data)?.circleMask // UIImage extension
            }
        }
        return cell
    }
    
    func capitalize(text: String) -> String {
        return text.prefix(1).uppercased() + text.dropFirst()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
