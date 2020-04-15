//
//  DefinitionViewController.swift
//  SwiftVoc
//
//  Created by Cedric Janssens on 4/13/20.
//  Copyright © 2020 Cedric Janssens. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    // MARK: - Properties
    
    var vocabWord: VocabularyWord?
    
    // MARK: - UpdatesUI
    let UICellLabel: UILabel! = nil
    let UITextView: UITextView! = nil
    func updateViews(){
        if let word = vocabWord   {
            UICellLabel.text = word.word
            UITextView.text = word.definition
        }
    }
    // MARK: - Lifecylce
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
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
