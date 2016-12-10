//
//  ProgrammerTableViewCell.swift
//  RealProgrammers
//
//  Created by Anton Kovalchuk on 14.11.16.
//  Copyright © 2016 Anton Kovalchuk. All rights reserved.
//

import UIKit

class ProgrammerTableViewCell: UITableViewCell {

}

extension ProgrammerTableViewCell: ProgrammerCellView {
    
    func display(name: String) {
        textLabel?.text = name
    }
    
    func display(date: String) {
        
    }
    
    func display(favorite: Bool) {
        
    }
}
