//
//  Presentable.swift
//  CoordinatorPattern
//
//  Created by Corey Davis on 10/24/18.
//  Copyright © 2018 Corey Davis. All rights reserved.
//

import Foundation
import UIKit

protocol Presentable: Presenter {
    func toPresent() -> UIViewController
}

extension UIViewController: Presentable {
    func toPresent() -> UIViewController {
        return self
    }
}
