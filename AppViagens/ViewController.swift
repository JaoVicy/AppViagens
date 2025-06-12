//
//  ViewController.swift
//  AppViagens
//
//  Created by João Víctor Benetti Filipim on 12/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viagensTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
    }
}

// MARK: Extenções da ViewController:
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "Viagem \(indexPath.row)"
        return cell
    }
}
