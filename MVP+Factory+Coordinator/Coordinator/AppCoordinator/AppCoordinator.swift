//
//  AppCoordinator.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    private let window: UIWindow
    private let navigationController: UINavigationController
    var starterCoordinator: Coordinator?
    init(window: UIWindow = UIWindow(),
         navigationController: UINavigationController = UINavigationController()) {
        self.window = window
        self.navigationController = navigationController
        setupWindow()
        setupStarterCoordinator()
    }
    private func setupWindow() {
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
    private func setupStarterCoordinator() {
        starterCoordinator = FeatureCoordinator(navigationController: navigationController)
    }
    func start() {
        starterCoordinator?.start()
    }
}
