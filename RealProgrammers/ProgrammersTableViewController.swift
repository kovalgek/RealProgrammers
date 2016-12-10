//
//  ProgrammersTableViewController.swift
//  RealProgrammers
//
//  Created by Anton Kovalchuk on 14.11.16.
//  Copyright © 2016 Anton Kovalchuk. All rights reserved.
//

import UIKit

class ProgrammersTableViewController: UITableViewController {

    var presenter: ShowProgrammersListPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let presenter = presenter {
            presenter.viewCreated()
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.programmersCount() ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgrammersCell", for: indexPath) as! ProgrammerTableViewCell
        if let presenter = presenter {
            presenter.configure(view: cell, at: indexPath.row)
        }
        return cell
    }
}
