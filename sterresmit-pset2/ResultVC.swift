//
//  EndViewController.swift
//  sterresmit-pset2
//
//  Created by Sterre Smit on 19/11/2018.
//  Copyright © 2018 Sterre Smit. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    

    
    @IBOutlet weak var resultStory: UILabel!
    var madLib : String!
    
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        super.viewDidLoad()
        
        resultStory.text = madLib
        
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
