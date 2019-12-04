//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Tomek Klocek on 2019-11-27.
//  Copyright © 2019 Tomek Klocek. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var goalDecriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var completionView: UIView!
    @IBOutlet weak var goalProgressBar: UIProgressView!
    
    func configureCell(goal: Goal){
        self.goalDecriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress > 0 {
            let progress = Float(goal.goalProgress) /  Float(goal.goalCompletonValue)
            self.goalProgressBar.progress = progress
        } else {
            self.goalProgressBar.progress = 0.0
        }
        
        if goal.goalProgress == goal.goalCompletonValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }

    }
    
    
}
