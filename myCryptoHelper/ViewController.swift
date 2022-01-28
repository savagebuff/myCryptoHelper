//
//  ViewController.swift
//  myCryptoHelper
//
//  Created by Dinar Garaev on 28.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View loaded")
        tableView.dataSource = self
        tableView.delegate = self
        
        NomicsAPICaller.shared.getAllCryptoData { result in
            switch result {
            case .success(let models):
                print(models.count)
                print(models[0].name! + " - " + models[0].price!)
            case .failure(_):
                print("no good(")
            }
        }
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CryptoTableViewCell.identifier, for: indexPath) as? CryptoTableViewCell else {
             fatalError()
        }
        return cell
    }
}

