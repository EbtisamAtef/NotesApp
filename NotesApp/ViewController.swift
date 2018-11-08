//
//  ViewController.swift
//  NotesApp
//
//  Created by Ebtisam on 11/8/18.
//  Copyright © 2018 Ebtisam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var txtTitle: UITextField!
    
    @IBOutlet weak var txtDetails: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtTitle.delegate = self as? UITextFieldDelegate
        txtDetails.delegate = self as? UITextViewDelegate
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
        
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    @IBAction func btnSave(_ sender: UIButton) {
        
    let NewNotes =  MyNotes(context:context)
        NewNotes.title = txtTitle.text
        NewNotes.details = txtDetails.text
        NewNotes.savadate=NSDate() as Date
        do{
            add.saveContext()
            print("save")
            txtDetails.text=""
            txtTitle.text=""
        }catch{
            print("error")
            
        }
        
    }
    
    


}

