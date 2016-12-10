//
//  InMemoryRepo.swift
//  RealProgrammers
//
//  Created by Anton Kovalchuk on 14.11.16.
//  Copyright © 2016 Anton Kovalchuk. All rights reserved.
//

import Foundation

class InMemoryRepo : EntityGateway {
    
    var programmers = [
        Programmer(name: "Anton", domain: "domain", emacs: 2, caffeine: 3, rating: 10, interviewDate: Date(), favorite: true),
        Programmer(name: "Emiel", domain: "domain", emacs: 2, caffeine: 3, rating: 10, interviewDate: Date(), favorite: true),
        Programmer(name: "Jerry", domain: "domain", emacs: 2, caffeine: 3, rating: 10, interviewDate: Date(), favorite: true)
    ]
    
    func fetchProgrammers() -> [Programmer] {
        return programmers
    }
}
