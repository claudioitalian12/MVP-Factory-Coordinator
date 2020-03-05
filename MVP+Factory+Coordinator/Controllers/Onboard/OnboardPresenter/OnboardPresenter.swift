//
//  OnboardPresenter.swift
//  MVP+Factory+Coordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

protocol OnboardPresenterDelegate: class {
    func complete()
}

class OnboardPresenter {
    let view: OnboardView
    weak var delegate: OnboardPresenterDelegate?
    init(view: OnboardView,
         delegate: OnboardPresenterDelegate?) {
        self.view = view
        self.delegate = delegate
    }
    func load() {
        view.setView()
    }
    func finishOnboard() {
        DispatchQueue.main.async { [weak self] in
              self?.delegate?.complete()
          }
    }
}
