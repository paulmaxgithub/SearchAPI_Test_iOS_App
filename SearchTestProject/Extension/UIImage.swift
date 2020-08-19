//
//  UIImage.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/19/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

extension UIImage {
    
    var circleMask: UIImage {
        
        let square = size.width < size.height ? CGSize(
            width: size.width, height: size.width) : CGSize(width: size.height, height: size.height)
        
        let imageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: square))
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.image = self
        imageView.layer.cornerRadius = square.width / 2
        imageView.layer.masksToBounds = true
        
        UIGraphicsBeginImageContext(imageView.bounds.size)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let result = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return result
    }
}
