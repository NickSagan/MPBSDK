//
//  MPB.swift
//  MPBSDK
//
//  Created by Nick Sagan on 20.01.2023.
//

import UIKit

public class MPB {
    
    private init(){}
    
    private static var color: UIColor = .lightGray
    
    public static func setup(color: UIColor) {
        MPB.color = color
    }
    
    public static func controller() -> UINavigationController {
        let navBar = UINavigationController(rootViewController: ViewController())
        navBar.navigationBar.backgroundColor = color
        return navBar
    }
    
}
