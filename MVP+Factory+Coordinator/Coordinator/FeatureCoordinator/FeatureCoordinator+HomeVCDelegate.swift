//
//  FeatureCoordinator+HomeVCDelegate.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import Foundation
import UIKit

extension FeatureCoordinator: HomePresenterDelegate {
    func nextController() {
      
    }
     
    func showHome() {
        let vc = FeatureSceneFactory.makeHome(delegate: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
}
