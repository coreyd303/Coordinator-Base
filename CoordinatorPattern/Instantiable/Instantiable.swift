//
//  Instantiable.swift
//  CoordinatorPattern
//
//  Created by Corey Davis on 10/24/18.
//  Copyright © 2018 Corey Davis. All rights reserved.
//

import Foundation
import UIKit

typealias StoryboardSpecifications = (storyboardName: String, storyboardIdentifier: String)

protocol Instantiable: class {
    static func storyboardSpecifications() -> StoryboardSpecifications
}

extension Instantiable {
    static func initFromStoryboard() -> Self? {
        let specifications = storyboardSpecifications()

        return genericInitFromStoryboard(specifications.storyboardName, storyboardIdentifier: specifications.storyboardIdentifier)
    }

    private static func genericInitFromStoryboard<T>(_ storyboardName: String, storyboardIdentifier: String) -> T? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)

        guard storyboardIdentifier.isEmpty == false else {
            return storyboard.instantiateInitialViewController() as? T
        }

        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as? T
    }
}
