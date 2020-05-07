//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Mahesh on 07/05/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UITableViewController {
    var items:[NSManagedObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = UIColor(red: (21/255), green: (101/255), blue: (192/255), alpha: 1)
        navigationController?.navigationBar.tintColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addItem))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let appdelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appdelegate.persistentContainer.viewContext
        let fetchingItem = NSFetchRequest<NSManagedObject>(entityName: "item")
        do
        {
           items =  try managedContext.fetch(fetchingItem)
        }
        catch(let err as NSError)
        {
            print("Failed to fetch items",err)
        }
        
        
    }
    
    @objc func addItem(_sender:AnyObject)
    {
        print("Added")
        let alertController = UIAlertController(title: "Add New Item", message: "Fill the textfield given below", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default) { [unowned self] action in
            guard let textfield = alertController.textFields?.first , let itemToAdd = textfield.text else{ return }
            self.save(itemToAdd)
            self.tableView.reloadData()
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler:nil)
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func save(_ itemName:String)
    {
        guard let appdelegate = UIApplication.shared.delegate as? AppDelegate else{ return }
        let managedContext = appdelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "item", in: managedContext)
        let item = NSManagedObject(entity: entity!, insertInto: managedContext)
        item.setValue(itemName, forKey: "itemName")
        
        do
        {
            try managedContext.save()
            items.append(item)
        }
        catch let err as NSError
        {
            print("Failed To save item", err)
        }
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        let item = items[indexPath.row]
        cell?.textLabel?.text = item.value(forKeyPath: "itemName") as? String
        return cell!
        
    }
    
}

