//
//  MasterTableVC.swift
//  EnglishForKidsDemo
//
//  Created by TTB10912 on 26/09/2016.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {

    var dictList = ["Fruits" : "fruits.png" , "Animals" : "animals.jpeg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var arrKey = Array(dictList.keys)
        
        cell.textLabel?.text = arrKey[indexPath.row]
        
        cell.imageView?.image = UIImage(named: dictList["\(arrKey[indexPath.row])"]!)
        return cell
    }
    

}
