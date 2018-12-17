//
//  StoryChoice.swift
//  sterresmit-pset2
//
//  Created by Sterre Smit on 19/11/2018.
//  Copyright © 2018 Sterre Smit. All rights reserved.


import UIKit

class StoryChoice: UIViewController {
    var name: String!
    
    // Outlets for different story documents
    
    @IBAction func simple(_ sender: Any) {
        name = "madlib0_simple"
        performSegue(withIdentifier: "StorySegue", sender: sender)
    }
    
    @IBAction func tarzan(_ sender: Any) {
        name = "madlib1_tarzan"
        performSegue(withIdentifier: "StorySegue", sender: sender)
        
    }
    
    @IBAction func university(_ sender: Any) {
        name = "madlib2_university"
        performSegue(withIdentifier: "StorySegue", sender: sender)
        
    }
    
    @IBAction func clothes(_ sender: Any) {
        name = "madlib3_clothes"
        performSegue(withIdentifier: "StorySegue", sender: sender)
        
    }
    
    @IBAction func dance(_ sender: Any) {
        name = "madlib4_dance"
        performSegue(withIdentifier: "StorySegue", sender: sender)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "StorySegue" {
            let wordsVC = segue.destination as! WordsVC
            wordsVC.name = name
            
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
}
