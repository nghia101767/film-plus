//
//  HomeViewController.swift
//  Film Plus
//
//  Created by Nghia Nguyen on 7/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    @IBOutlet weak var btnNow: UIButton!
    @IBOutlet weak var btnRecent: UIButton!
    @IBOutlet weak var collectionFilm: UICollectionView!
    
    @IBAction func doNow(_ sender: UIButton) {
        btnRecent.isHighlighted = true
        sender.isHighlighted = false
        ViewModelProvider.shared.homeViewModel.getNow()
    }
    
    @IBAction func doRecent(_ sender: UIButton) {
        btnNow.isHighlighted = true
        sender.isHighlighted = false
        ViewModelProvider.shared.homeViewModel.getNow()
    }
    
}
