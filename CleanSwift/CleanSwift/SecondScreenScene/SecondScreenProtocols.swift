// SecondScreenProtocols.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол второго экрана
protocol SecondScreenViewControllerProtocol {
    var interactor: SecondScreenInteractorProtocol? { get }
    var router: SecondScreenRouterProtocol? { get }

    func displayInitForm(_ viewModel: AstronomyDescriptionChanged.GetAstronomyDescription.ViewModel)
}

/// Протокол интерактора второго экрана
protocol SecondScreenInteractorProtocol {
    var secondScreenWorker: SecondScreenWorkerProtocol? { get }
    var secondScreenPresenter: SecondScreenPresenterProtocol? { get }

    func requestInitForm()
}

/// Протокол презентера второго экрана
protocol SecondScreenPresenterProtocol {
    var secondScreenViewController: SecondScreenViewControllerProtocol? { get }

    func presentInitForm(_ model: AstronomyDescriptionChanged.GetAstronomyDescription.Response)
}

/// Протокол хранилища данных вторго экрана
protocol SecondScreenDataStoreProtocol {
    var astronomyDescription: String? { get set }
}

/// Протокол воркера второго экрана
protocol SecondScreenWorkerProtocol {}

/// Протокол роутера второго экрана
protocol SecondScreenRouterProtocol {
    var secondScreenViewController: SecondScreenViewControllerProtocol? { get }
}
