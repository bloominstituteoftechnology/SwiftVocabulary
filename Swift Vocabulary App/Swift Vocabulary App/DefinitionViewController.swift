//
//  DefinitionViewController.swift
//  Swift Vocabulary App
//
//  Created by Mark Poggi on 3/16/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

import UIKit
class DefinitionViewController: UIViewController {

    @IBOutlet weak var WordLabel: UILabel!
    
    @IBOutlet weak var WordDefinition: UITextView!
    
    
    var vocabWord: VocabularyWord?
    
    
    func updateViews() {
        if vocabWord != nil {
            WordDefinition.text = vocabWord?.definition
            WordLabel.text = vocabWord?.word
            
        }
    }
    
    override func viewDidLoad() {
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
