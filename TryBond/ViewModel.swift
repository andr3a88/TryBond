//
//  ViewModel.swift
//  TryBond
//
//  Created by Andrea on 01/06/2017.
//  Copyright © 2017 Andrea Stevanato. All rights reserved.
//

import Foundation
import Bond

final class ViewModel {
    
    //MARK: - Observable
    let isLoading = Observable(false)
    
    
    //MARK: - Methods
    func loading() {
        isLoading.value = !isLoading.value
    }
}
