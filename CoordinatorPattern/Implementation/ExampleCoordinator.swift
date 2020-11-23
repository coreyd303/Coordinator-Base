//
//  ExampleCoordinator.swift
//  CoordinatorPattern
//
//  Created by Corey Davis on 10/24/18.
//  Copyright © 2018 Corey Davis. All rights reserved.
//

import Foundation

protocol ExampleCoordinator: Coordinator {
    var didFinish: (() -> Void)?
}

class ExampleCoordinatorImplementation: ExampleCoordinator {

    private let router: Router
    private let presentableFactory: ExamplePresentableFactory

    init(router: Router, presentableFactory: ExamplePresentableFactory) {
        self.router = router
        self.presentableFactory = presentableFactory
    }

    func start() {
        let presentable = presentableFactory.makeExamplePresentable()
        router.present(presentable, animated: true, completion: nil)
    }
}
