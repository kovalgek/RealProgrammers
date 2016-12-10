//
//  ProgrammerDisplayData.swift
//  RealProgrammers
//
//  Created by Anton Kovalchuk on 14.11.16.
//  Copyright © 2016 Anton Kovalchuk. All rights reserved.
//

import Foundation

struct ProgrammerDisplayData {
    
    var name: String
    var interviewDate: Date
    var favorite: Bool
    
    init(programmer: Programmer) {
        name = programmer.name
        interviewDate =  programmer.interviewDate
        favorite = programmer.favorite
    }
}
