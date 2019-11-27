//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Tomek Klocek on 2019-11-27.
//  Copyright © 2019 Tomek Klocek. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button was pressedw")
    }
    
}

