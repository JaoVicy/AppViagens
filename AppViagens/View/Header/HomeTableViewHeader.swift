//
//  HomeTableViewHeader.swift
//  AppViagens
//
//  Created by João Víctor Benetti Filipim on 13/06/25.
//

import UIKit

class HomeTableViewHeader: UIView {

    // MARK: - IBOutlets:
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func configuraView() {
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
}
