//
//  OnboardVC.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

protocol OnboardView: class {
    func setView()
}

class OnboardVC: UIViewController {
    var presenter: OnboardPresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
    }
    @IBAction func finishOnboard(_ sender: Any) {
        presenter.finishOnboard()
    }
}
