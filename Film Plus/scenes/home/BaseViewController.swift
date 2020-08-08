//
//  BaseViewController.swift
//  Film Plus
//
//  Created by Nghia Nguyen on 7/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    let viewModelProvider = ViewModelProvider.shared
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setNeedsStatusBarAppearanceUpdate()
        initView()
        loadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        setupNavigation()
    }
    open func initView(){
        self.view.backgroundColor = Colors.primaryBg.getColor()
    }
    open func loadData(){}
    open func setupNavigation(){
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: Colors.textPrimary.getColor()]
        navigationController?.navigationBar.barTintColor = Colors.primaryBg.getColor()
    }
}
