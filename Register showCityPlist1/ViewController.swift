//
//  ViewController.swift
//  Register showCityPlist1
//
//  Created by admin on 3/29/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        DataService.shared.getCityOfPlist()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.shared.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath) as? TableViewCell
        cell?.lbNameCiti.text = DataService.shared.cities[indexPath.row].name
        cell?.lbCodeCiti.text = String(DataService.shared.cities[indexPath.row].codeCity)
        return cell!
    }
}

