//
//  DefinitionViewController.swift
//  swiftVocabularyProject
//
//  Created by B$hady on 5/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
   
    var definition: VocabularyWord?
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
        
    }
    func updateViews() {
        
        nameLabel.text = definition?.word
        definitionTextView.text = definition?.definition
        
    }
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
