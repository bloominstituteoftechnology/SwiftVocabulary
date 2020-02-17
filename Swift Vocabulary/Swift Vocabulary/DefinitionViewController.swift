//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Mark Gerrior on 2/17/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var body: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateViews()
    }
    
    func updateViews() {
        guard let vocab = vocabWord else { return }
        
        label.text = vocab.word
        body.text = vocab.definition
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
