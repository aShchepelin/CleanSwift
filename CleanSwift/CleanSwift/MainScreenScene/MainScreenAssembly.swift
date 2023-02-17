// MainScreenAssembly.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Сборщик модуля главного экрана
enum MainScreenAssembly {
    static func makeMainModule() -> UIViewController {
        let viewController = MainScreenViewController()
        let networkService = NetworkService()
        let interactor = MainScreenInteractor()
        let presenter = MainScreenPresenter()
        let worker = MainScreenWorker()
        let imageService = ImageService()
        let router = MainScreenRouter(dataStore: interactor)
        viewController.mainScreenInteractor = interactor
        viewController.mainScreenRouter = router
        interactor.mainScreenPresenter = presenter
        interactor.mainScreenWorker = worker
        presenter.mainScreenViewController = viewController
        worker.imageService = imageService
        worker.networkService = networkService
        router.viewController = viewController
        return viewController
    }
}
