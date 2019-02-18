//
//  ExampleCoordinator.swift
//  CoordinatorPattern
//
//  Created by Corey Davis on 10/24/18.
//  Copyright © 2018 Corey Davis. All rights reserved.
//

import Foundation

protocol ExampleCoordinator: Coordinator {
    var didTapButton: (() -> Void)? { get set }
    func showSomething()
}

class ExampleCoordinatorImplementation: ExampleCoordinator {
    var didTapButton: (() -> Void)?

    private let router: Router
    private let presentableFactory: ExamplePresentableFactory

    var examplePresentable: ExamplePresentable?

    init(router: Router, presentableFactory: ExamplePresentableFactory) {
        self.router = router
        self.presentableFactory = presentableFactory
    }

    func start() {
        guard let presentable = presentableFactory.makeExamplePresentable() else { return }
        router.present(presentable, animated: true, completion: nil)
    }

    func showSomething() {
        //
    }
}
