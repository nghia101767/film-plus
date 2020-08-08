//
//  ViewModelProvider.swift
//  Film Plus
//
//  Created by Nghia Nguyen on 8/3/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation
final class ViewModelProvider{
    private static var instance: ViewModelProvider? = nil
    static var shared: ViewModelProvider{
        get{
            if instance == nil{
                instance = ViewModelProvider()
            }
            return self.instance!
        }
    }
    let homeViewModel: HomeViewModel = HomeViewModel()
}
