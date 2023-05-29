//
//  UserTableViewController.swift
//  UserAppsss
//
//  Created by Serj on 29.05.2023.
//

import UIKit

class UserTableViewController: UITableViewController {
    private var usersList = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let UserddetailsVC = segue.destination as? UserDeteilsViewController else { return }
        UserddetailsVC.user = usersList[indexPath.row]
    }
    
}
// MARK: -UserTableViewController

extension UserTableViewController{
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        usersList.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celll", for: indexPath)
        let celll = usersList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = celll.fullName
        cell.contentConfiguration = content
        return cell
    }
   
}
