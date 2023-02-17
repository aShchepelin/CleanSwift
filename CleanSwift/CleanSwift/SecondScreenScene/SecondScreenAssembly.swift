// SecondScreenAssembly.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Сборщик модуля второго экрана
enum SecondScreenAssembly {
    static func makeSecondModule(_ astronomyDescription: String) -> UIViewController {
        let viewController = SecondScreenViewController()
        let interactor = SecondScreenInteractor()
        let presenter = SecondScreenPresenter()
        let worker = SecondScreenWorker()
        let router = SecondScreenRouter(dataStore: interactor)
        viewController.interactor = interactor
        viewController.router = router
        presenter.secondScreenViewController = viewController
        interactor.secondScreenPresenter = presenter
        interactor.secondScreenWorker = worker
        interactor.astronomyDescription = astronomyDescription
        router.secondScreenViewController = viewController
        return viewController
    }
}
