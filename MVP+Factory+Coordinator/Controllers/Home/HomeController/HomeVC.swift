//
//  HomeVC.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

protocol HomeView: class {
    func setView()
}

class HomeVC: UIViewController {
    var presenter: HomePresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
        // Do any additional setup after loading the view.
    }
}
