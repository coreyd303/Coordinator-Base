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

    func somethingPublic()
}

class ExampleViewController: UIViewController, ExamplePresentable {
    var didTap: (() -> Void)?
    var primaryView: ExampleView? {
        return view as? ExampleView
    }

    func somethingPublic() {
        // do something awesome
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



protocol ExampleInteractor: class {
    var someDataObject: Any? { get }
    
    func sendNotification()
}

class ExampleInteractorImplementation: ExampleInteractor {
    
    private(set) var someDataObject: Any?

    func updateObject(newData: String) {
        someDataObject.property = newData
    }
    
    func sendNotification() {
        // shout it out yo!
    }
}
