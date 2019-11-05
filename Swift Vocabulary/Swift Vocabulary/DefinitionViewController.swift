//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Isaac Grove on 11/4/19.
//  Copyright © 2019 Isaac Grove. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Definition: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
       Label.text = vocabWord.definition
    }
    var vocabWord: VocabularyWord?
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

