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
        
        self.txtTitle.delegate = self
        self.txtDetails.delegate = self
        
    }
    
    
    //This is for the keyboard to GO AWAYY !! when user clicks anywhere on the view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    
    //This is for the keyboard to GO AWAYY !! when user clicks "Return" key  on the keyboard
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    @IBAction func btnSave(_ sender: UIButton) {
        
    let NewNotes =  MyNotes(context:context)
        NewNotes.title = txtTitle.text
        NewNotes.details = txtDetails.text
        NewNotes.savadate=NSDate()
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

