//
//  SquareCell.swift
//  poq_task
//
//  Created by Massimiliano on 25/11/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

class SquareCell: UITableViewCell {

    @IBOutlet var backgroundViewCell: UIView!
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var descriptionLbl: UILabel!
    

    
    
    func setupTableViewCell(forsquare square : Square){
        nameLbl.text = "Name: \(square.name)"
        descriptionLbl.text = "Description: \(square.description)"
    }

}
