//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Nihal Erdal on 3/16/20.
//  Copyright © 2020 Nihal Erdal. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionTextView: UITextView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var vocabWord : VocabularyWord? 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        
        // Do any additional setup after loading the view.
    }
    
    func updateViews(){
        if let unwrappedword = vocabWord{
            nameLabel.text = unwrappedword.name
            definitionTextView.text = unwrappedword.definition
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
