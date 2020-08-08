//
//  HomeViewModel.swift
//  Film Plus
//
//  Created by Nghia Nguyen on 7/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation
import PromiseKit

class HomeViewModel: BaseViewModel {
    private static var instance: HomeViewModel? = nil
    static var shared: HomeViewModel{
        get{
            if instance == nil{
                instance = HomeViewModel()
            }
            return self.instance!
        }
    }
    func getNow(){
        firstly{
            URLSession.shared.dataTask(.promise, with: try ApiClient.getNow.makeRequest()).validate()
        }.map{
            try JSONDecoder().decode(Film.self, from: $0.data)
        }.done{ film in
            print("data \(film)")
        }.catch { (err) in
            print("Error \(err)")
        }
    }
    
}
