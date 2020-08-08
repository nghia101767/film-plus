//
//  NavigationController.swift
//  Film Plus
//
//  Created by Nghia Nguyen on 7/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController{
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
}
