//
//  ShowProgrammersListPresenter.swift
//  RealProgrammers
//
//  Created by Anton Kovalchuk on 14.11.16.
//  Copyright © 2016 Anton Kovalchuk. All rights reserved.
//

import Foundation

class ShowProgrammersListPresenter {
    
    fileprivate var programmers: [ProgrammerDisplayData] = []
    let useCase: ShowProgrammersListUseCase
    
    init(useCase: ShowProgrammersListUseCase) {
        self.useCase = useCase
    }
    
    func viewCreated() {
        useCase.showProgrammers()
    }
    
    func programmersCount() -> Int {
        return programmers.count
    }
    
    func configure(view: ProgrammerCellView, at: Int) {
        let programmer = programmers[at]
        view.display(name: programmer.name)
        view.display(date: programmer.interviewDate.relativeDateString())
        view.display(favorite: programmer.favorite)
    }
}

extension ShowProgrammersListPresenter: ShowProgrammersListPresentation {
    
    func present(programmers: [ProgrammerDisplayData]) {
        self.programmers = programmers
    }
}
