//
//  ExampleView.swift
//  CoordinatorPattern
//
//  Created by Corey Davis on 10/24/18.
//  Copyright © 2018 Corey Davis. All rights reserved.
//

import Foundation
import UIKit

protocol ExampleView {
    // public interface is defined here
}

class ExampleViewImplementation: UIView, ExampleView {

    override func awakeFromNib() {
        super.awakeFromNib()

        setupView()
    }

    private func setupView() {
        // view set up logic goes here
    }
}
