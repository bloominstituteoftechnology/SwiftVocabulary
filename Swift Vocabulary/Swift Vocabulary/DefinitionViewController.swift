//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Christy Hicks on 9/16/19.
//  Copyright © 2019 Rainn Inc. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet var TermLabel: UILabel!
    
    @IBOutlet var DefinitionTextView: UITextView!
    var word: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        

        // Do any additional setup after loading the view.
    }
    func setUpViews() {
        guard let word = word else { return }
        TermLabel.text = word.word
        DefinitionTextView.text = word.definition
      
        
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


