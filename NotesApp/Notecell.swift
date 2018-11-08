//
//  Notecell.swift
//  NotesApp
//
//  Created by Ebtisam on 11/8/18.
//  Copyright © 2018 Ebtisam. All rights reserved.
//

import UIKit

import CoreData


class Notecell: UITableViewCell {
    
    
    
    @IBOutlet weak var mytitle: UILabel!
    
    @IBOutlet weak var myDetails: UITextView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    
    func setCell(note:MyNotes) {
        mytitle.text = note.title
        myDetails.text = note.details
    }
    
    
    
    
    
}
