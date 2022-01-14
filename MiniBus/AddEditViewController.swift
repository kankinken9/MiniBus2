//
//  AddEditViewController.swift
//  MiniBus
//
//  Created by kenkan on 12/1/2022.
//

import UIKit
import CoreData

class AddEditViewController: UITableViewController {
    
    var theDevice : Device?
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var versionTF: UITextField!
    @IBOutlet weak var companyTF: UITextField!
    
    var managedObjectContext : NSManagedObjectContext? {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            return delegate.persistentContainer.viewContext;
        }
        return nil;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //for edit
        if let device = theDevice {
            self.nameTF.text = device.name!
            self.versionTF.text = device.version!
            self.companyTF.text = device.company!
        } }
}
