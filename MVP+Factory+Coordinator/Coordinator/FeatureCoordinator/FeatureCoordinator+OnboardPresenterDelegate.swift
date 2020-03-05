//
//  FeatureCoordinator+OnboardPresenterDelegate.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import Foundation
import UIKit

extension FeatureCoordinator: OnboardPresenterDelegate {
    func complete() {
      showHome()
    }
     
    func showOnboard() {
        let vc = FeatureSceneFactory.makeOnboard(delegate: self)
        navigationController.viewControllers = [vc]
    }
    
}
