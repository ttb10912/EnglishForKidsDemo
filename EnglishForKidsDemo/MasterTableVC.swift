//
//  MasterTableVC.swift
//  EnglishForKidsDemo
//
//  Created by TTB10912 on 26/09/2016.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {

    var dictList = ["Fruits" : "fruits.png" , "Animals" : "animals.jpeg",
                    "Musical Instruments" : "Musical_instrument.png"    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        dictList.sorted{$0.0 < $1.0}6
        let sortDict = Array(dictList.keys).sort(<)
        //        tableView.reloadData()
    }


    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

   



    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictList.count
    }
    

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        
        var arrKey = Array(dictList.keys)
        
        cell.textLabel?.text = arrKey[indexPath.row]
        
        cell.imageView?.image = UIImage(named: dictList["\(arrKey[indexPath.row])"]!)
        return cell
    }
}
