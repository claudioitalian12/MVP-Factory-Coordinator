//
//  HomePresenter.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

protocol HomePresenterDelegate: class {
    func nextController()
}

class HomePresenter {
    let view: HomeView
    weak var delegate: HomePresenterDelegate?
    init(view: HomeView,
         delegate: HomePresenterDelegate?) {
        self.view = view
        self.delegate = delegate
    }
    func load() {
        view.setView()
    }
}
