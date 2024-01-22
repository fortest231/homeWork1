//
//  ViewController.swift
//  lesson3
//
//  Created by MacBook Pro on 18/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(tableView)
        
        tableView.dataSource = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
            
        ])
    

    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("indexPath: \(indexPath.row)")
        let cell = UITableViewCell(style: .subtitle,reuseIdentifier: "cell")
        cell.textLabel?.text = "123213 21 "
        cell.imageView?.image = UIImage(systemName: "star")
        cell.detailTextLabel?.text = "detailTextLabel"
        return cell
    }
    
    
}
