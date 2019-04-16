//
//  VehicleTableViewCell.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 10/04/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import UIKit

class VehicleTableViewCell: UITableViewCell {

    @IBOutlet weak var labelLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    func configureCell(label: String, model: String, year: String) {
        
        labelLabel.text = label
        modelLabel.text = model
        yearLabel.text = year
    }
}
