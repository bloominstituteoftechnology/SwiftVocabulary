//
//  VocabWordTableViewCell.swift
//  SwiftVocabulary
//
//  Created by Davit Hovsepyan on 9/9/19.
//  Copyright © 2019 Davit Hovsepyan. All rights reserved.
//

import UIKit

class VocabWordTableViewCell: UITableViewCell {
    
    var vocabWord: VocabWord? {
        didSet {
           updateViews()
        }
    }
    
    func updateViews() {
        textLabel?.text = vocabWord?.word
    }

}
