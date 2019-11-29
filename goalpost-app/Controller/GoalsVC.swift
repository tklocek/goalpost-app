//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Tomek Klocek on 2019-11-27.
//  Copyright © 2019 Tomek Klocek. All rights reserved.
//

import UIKit
import CoreData


class GoalsVC: UIViewController {

    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    
        tableView.isHidden = false
        
        
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button was pressedw")
    }
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        cell.configureCell(description: "Eat salad twice a weak.", type: .shortTerm, goalProgressAmount: 2)
        
        return cell
        
    }
    
    
    
}
