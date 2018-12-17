//
//  EndViewController.swift
//  sterresmit-pset2
//
//  Created by Sterre Smit on 19/11/2018.
//  Copyright © 2018 Sterre Smit. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    
    
    // Outlet resulting text
    @IBOutlet weak var resultStory: UILabel!
    var madLib : String!
    
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        super.viewDidLoad()
        // passing story to text object
        resultStory.text = madLib
        
    }
    
}

