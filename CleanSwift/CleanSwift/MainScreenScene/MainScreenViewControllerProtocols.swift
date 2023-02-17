// MainScreenProtocols.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Протокол главного экрана
protocol MainScreenDisplayLogic {
    var mainScreenInteractor: MainScreenBusinessLogic? { get }
    var mainScreenRouter: MainScreenRoutingLogic? { get }

    func displayInitForm(_ model: MainScreenInputModel.InitForm.ViewModel)
    func displayWebURL(_ data: MainScreenInputModel.InitForm.ViewModel)
}

/// Протокол интерактора главного экрана
protocol MainScreenBusinessLogic {
    var mainScreenWorker: MainScreenWorkerLogic? { get }
    var mainScreenPresenter: MainScreenPresentationLogic? { get }

    func requestInitForm()
    func requestWebURL()
}

/// Протокол презентера главного экрана
protocol MainScreenPresentationLogic {
    var mainScreenViewController: MainScreenDisplayLogic? { get }

    func presentInitForm(_ model: MainScreenInputModel.InitForm.Response)
    func presentWebURL(_ data: MainScreenInputModel.InitForm.Response)
}

/// Протокол хранилища данных первого экрана
protocol MainScreenDataStore {
    var astronomy: Astronomy? { get set }
}

/// Протокол роутера главного экрана
protocol MainScreenRoutingLogic {
    func routToSecondScreenViewController()
}

/// Протокол воркера главного экрана
protocol MainScreenWorkerLogic {
    var networkService: NetworkServiceProtocol? { get }
    var imageService: ImageServiceProtocol? { get }

    func getAstronomyData(completion: @escaping (Result<Astronomy, Error>) -> Void)
    func getAstronomyImage(completion: @escaping (Result<Data, Error>) -> ())
}
