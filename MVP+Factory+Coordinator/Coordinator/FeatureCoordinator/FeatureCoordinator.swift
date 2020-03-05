//
//  FeatureCoordinator.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

class FeatureCoordinator: Coordinator {
    let navigationController: UINavigationController
    init(navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
    }
    func start() {
      showOnboard()
    }
}
