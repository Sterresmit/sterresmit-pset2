//
//  StoryViewController.swift
//  sterresmit-pset2
//
//  Created by Sterre Smit on 19/11/2018.
//  Copyright © 2018 Sterre Smit. All rights reserved.
//

import UIKit

class WordsVC: UIViewController {
    var story: Story!
    var name: String!
    
    @IBOutlet weak var inputWord: UITextField!
    @IBOutlet weak var wordsLeft: UILabel!
    
    func wordsLeftCount() {
        
    }
    
    
    
    @IBAction func submitWord(_ sender: Any) {
        //    Fill in placeholder and go to next one
        if story.remainingPlaceholders > 1 {
            story.fillInPlaceholder(word: inputWord.text!)
            inputWord.text = ""
            inputWord.placeholder = story.nextPlaceholder
            wordsLeftCount()
            
            
        } else {
            // fill in words and prepare segue
            story.fillInPlaceholder(word: inputWord.text!)
            performSegue(withIdentifier: "ResultSegue", sender: sender)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // create text
        let storyPath = Bundle.main.path(forResource: name, ofType: "txt")
        let text = try! String(contentsOfFile: storyPath!, encoding: .utf8)
        story = Story(withText: text)
        // do something with next placeholder
        inputWord.placeholder = story.nextPlaceholder
        
    }
    
    //        To the resulting story
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultSegue" {
            let resultVC = segue.destination as! ResultVC
            resultVC.madLib = story.normalText
        }
        
    }
}
