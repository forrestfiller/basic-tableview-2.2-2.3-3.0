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
    var testArray = Array<Test>()
    
    var red: UIColor!
    
    override func loadView() {
        let frame = UIScreen.main.bounds
        let view = UIView(frame: frame)
        view.backgroundColor = red
        
        self.testTable = UITableView(frame: frame, style: .plain)
        self.testTable.delegate = self
        self.testTable.dataSource = self
        view.addSubview(self.testTable)
        
        
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellId = "cellId"
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellId) {
            cell.textLabel?.text = "\((indexPath as NSIndexPath).row)"
            cell.detailTextLabel?.text = "testing"
            return cell
        }
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
        cell.textLabel?.text = "\((indexPath as NSIndexPath).row)"
        cell.detailTextLabel?.text = "testing"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // do my animation here and any pushes from here
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

