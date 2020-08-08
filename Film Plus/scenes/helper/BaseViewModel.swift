//
//  BaseViewModel.swift
//  Film Plus
//
//  Created by Nghia Nguyen on 7/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class BaseViewModel: NSObject {
    let isLoading = BehaviorRelay<Bool>(value: false)
    let success = BehaviorRelay<String>(value: "")
    let error = BehaviorRelay<String>(value: "")
    override init() {
        
    }
    
}
