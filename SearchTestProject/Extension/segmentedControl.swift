//
//  segmentedControl.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/6/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

extension ViewController {
 
    func addSegmentedControl() {

        let segmentedControl = UISegmentedControl(items: ["iTunes", "GitHub"])
        segmentedControl.sizeToFit()
        
        segmentedControl.backgroundColor = .white
        segmentedControl.selectedSegmentTintColor = .blue
        segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
        segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        
        segmentedControl.frame = CGRect(x: 10, y: 10, width: view.frame.size.width - 30, height: 50)
        
        self.navigationItem.titleView = segmentedControl
    }
}
