//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Bhawnish Kumar on 2/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

import UIKit



class DefinitionViewController: UIViewController {
    
    var word: VocabularyWord?
    func updateViews() {
        if let unwrappedWord = word {
            print(unwrappedWord)
            wordLabel.text = word?.word
            definitionTextView.text = word?.definition
        }
        
    }
    
   
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        updateViews()
        super.viewDidLoad()

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

}
