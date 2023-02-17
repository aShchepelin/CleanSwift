// SecondScreenProtocols.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол второго экрана
protocol SecondScreenDisplayLogic {
    var interactor: SecondScreenBusinessLogic? { get }
    var router: SecondScreenRoutingLogic? { get }

    func displayInitForm(_ viewModel: AstronomyDescriptionChanged.GetAstronomyDescription.ViewModel)
}

/// Протокол интерактора второго экрана
protocol SecondScreenBusinessLogic {
    var secondScreenWorker: SecondScreenWorkerLogic? { get }
    var secondScreenPresenter: SecondScreenPresentationLogic? { get }

    func requestInitForm()
}

/// Протокол презентера второго экрана
protocol SecondScreenPresentationLogic {
    var secondScreenViewController: SecondScreenDisplayLogic? { get }

    func presentInitForm(_ model: AstronomyDescriptionChanged.GetAstronomyDescription.Response)
}

/// Протокол хранилища данных вторго экрана
protocol SecondScreenDataStore {
    var astronomyDescription: String? { get set }
}

/// Протокол воркера второго экрана
protocol SecondScreenWorkerLogic {}

/// Протокол роутера второго экрана
protocol SecondScreenRoutingLogic {
    var secondScreenViewController: SecondScreenDisplayLogic? { get }
}
