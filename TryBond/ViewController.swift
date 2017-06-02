//
//  ViewController.swift
//  TryBond
//
//  Created by Andrea on 01/06/2017.
//  Copyright © 2017 Andrea Stevanato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var label: UILabel!
    
    //MARK: - View Model
    let viewModel = ViewModel()
    
    //MARK: - View Management
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupBindings()
    }
    
    private func setupBindings() {

        viewModel.isLoading
            .map { "isLoading: \($0)" }
            .bind(to: label)
    }
    
    //MARK: - Actions
    @IBAction func didTapOnBarLeft(_ sender: Any) {
        viewModel.loading()
    }
}

