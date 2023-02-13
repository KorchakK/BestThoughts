//
//  CustomNavController.swift
//  BestThoughts
//
//  Created by Konstantin Korchak on 13.02.2023.
//

import UIKit

class CustomNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.backgroundColor = .lightGray
        navigationBar.prefersLargeTitles = true
    }
}
