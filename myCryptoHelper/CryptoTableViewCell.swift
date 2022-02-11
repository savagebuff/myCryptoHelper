//
//  MyTableViewCell.swift
//  myCryptoHelper
//
//  Created by Dinar Garaev on 29.01.2022.
//

import UIKit

struct CryptoTableViewCellViewModel {
    let name:       String
    let symbol:     String
    let price:      String
    let logo_url:   String
}

class CryptoTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel:    UILabel!
    @IBOutlet var symbolLabel:  UILabel!
    @IBOutlet var priceLabel:   UILabel!
    @IBOutlet var logoImage:    UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        logoImage.image = nil
        nameLabel.text = nil
        priceLabel.text = nil
        symbolLabel.text = nil
    }
    
    static let identifier = "CryptoTableViewCell"
    
    func configure(with viewModel: CryptoTableViewCellViewModel) {
        nameLabel.text = viewModel.name
        symbolLabel.text = viewModel.symbol
        priceLabel.text = viewModel.price
        if let url = URL(string: "https://cryptoicon-api.vercel.app/api/icon/\(viewModel.symbol.lowercased())") {
            let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        self?.logoImage.image = UIImage(data: data)
//                        print(viewModel.logo_url)
                    }
                }
            }
            task.resume()
        }
    }
}
