//
//  EntityGateway.swift
//  RealProgrammers
//
//  Created by Anton Kovalchuk on 14.11.16.
//  Copyright © 2016 Anton Kovalchuk. All rights reserved.
//

import Foundation

protocol EntityGateway {
    func fetchProgrammers() -> [Programmer]
}
