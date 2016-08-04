//
//  ViewController.swift
//  BasicTableViewConversion
//
//  Created by Forrest Filler on 8/4/16.
//  Copyright © 2016 forrestfiller. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var testTable: UITableView!
    var tests = Array<Test>()
    var red: UIColor!
    
    override func loadView() {
        let frame = UIScreen.main.bounds
        let view = UIView(frame: frame)
        view.backgroundColor = red
        
        self.testTable = UITableView(frame: frame, style: .plain)
        self.testTable.delegate = self
        self.testTable.dataSource = self
        
        // The following makes a thick red boarder around the frame of the screen, behind the navbar.
        //        self.testTable.layer.masksToBounds = true
        //        self.testTable.layer.borderColor = UIColor.redColor().CGColor
        //        self.testTable.layer.borderWidth = 6.0
        view.addSubview(self.testTable)
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        //self.tests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellId = "cellId"
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellId) {
            return self.configureCell(cell: cell, indexPath: indexPath)
        }
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
        return self.configureCell(cell: cell, indexPath: indexPath)
    }
    
    func configureCell(cell:UITableViewCell, indexPath:NSIndexPath) -> UITableViewCell {
        //let test = self.tests[indexPath.row]
        cell.textLabel?.text = "test.additional"
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.text = "test.data"
        cell.detailTextLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.lightGray
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // do my animation here and any pushes from here
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
