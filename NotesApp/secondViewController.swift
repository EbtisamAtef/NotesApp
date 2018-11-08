//
//  secondViewController.swift
//  NotesApp
//
//  Created by Ebtisam on 11/8/18.
//  Copyright © 2018 Ebtisam. All rights reserved.
//

import UIKit
import CoreData


class secondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tvListNotes: UITableView!
    
    @IBAction func btnBack(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    var listnotes = [MyNotes] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadNotes()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listnotes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:Notecell = tableView.dequeueReusableCell(withIdentifier: "cell", for:
            indexPath) as! Notecell
        cell.setCell(note: listnotes[indexPath.row])
        return cell
    }
    
    
    func loadNotes(){
        
        
        let fetchRequest:NSFetchRequest<MyNotes> = MyNotes.fetchRequest()
        do{
            listnotes = try context.fetch(fetchRequest)
            tvListNotes.reloadData()
            
        }catch{}
    }

}
