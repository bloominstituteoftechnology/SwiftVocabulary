//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Ryan Dutson on 7/15/19.
//  Copyright © 2019 Ryan Dutson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    // Properties go here
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionText: UITextView!
    
    let vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func updateViews() {
        if let vocabWord = vocabWord {
            
        }
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
