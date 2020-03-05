//
//  FeatureCoordinatorFactory.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

struct FeatureSceneFactory {
    static func makeOnboard(delegate: OnboardPresenterDelegate?) -> OnboardVC {
        let vc = OnboardVC()
        let presenter = OnboardPresenter(view: vc, delegate: delegate)
        vc.presenter = presenter
        return vc
    }
    static func makeHome(delegate: HomePresenterDelegate?) -> HomeVC {
         let vc = HomeVC()
         let presenter = HomePresenter(view: vc, delegate: delegate)
         vc.presenter = presenter
         return vc
     }
}
