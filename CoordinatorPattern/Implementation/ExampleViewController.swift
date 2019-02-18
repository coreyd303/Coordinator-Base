//
//  ExampleViewController.swift
//  CoordinatorPattern
//
//  Created by Corey Davis on 10/24/18.
//  Copyright © 2018 Corey Davis. All rights reserved.
//

import Foundation
import UIKit

protocol ExamplePresentable: Presentable {
    var didTap: (() -> Void)? { get set }

    func start()
    func stop()
}

class ExampleViewController: UIViewController, ExamplePresentable {
    var didTap: (() -> Void)?
    var primaryView: ExampleView? {
        return view as? ExampleView
    }

    func start() {
        // actions at intialization, for example primaryView.startAction()
    }

    func stop() {
        // actions at deinitialization, for example primaryView.stopAction()
    }


}

extension ExampleViewController: Instantiable {
    struct Storyboard {
        static let Name = String(describing: ExampleViewController.self)
        static let Identifier = String(describing: ExampleViewController.self)
    }
    static func storyboardSpecifications() -> StoryboardSpecifications {
        return(Storyboard.Name, Storyboard.Identifier)
    }
}
