//
//  ShowProgrammersListUseCase.swift
//  RealProgrammers
//
//  Created by Anton Kovalchuk on 14.11.16.
//  Copyright © 2016 Anton Kovalchuk. All rights reserved.
//

import Foundation

class ShowProgrammersListUseCase {
    
    let entityGateway: EntityGateway
    var presenter: ShowProgrammersListPresentation?
    
    init(entityGateway: EntityGateway) {
        self.entityGateway = entityGateway
    }
    
    func showProgrammers() {
        
        // obtain the parameter data from entity gateway
        let programmers = entityGateway.fetchProgrammers()
        
        // modify, filter data into different structure
        let programmerDisplayData = programmers.map {ProgrammerDisplayData(programmer: $0)}
        
        // pass data to presenter
        presenter?.present(programmers: programmerDisplayData)
    }
}
