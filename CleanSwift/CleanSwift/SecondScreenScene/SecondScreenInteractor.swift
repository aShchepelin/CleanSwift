// SecondScreenInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Интерактор второго экрана
final class SecondScreenInteractor: SecondScreenBusinessLogic {
    // MARK: - Public Properties

    var secondScreenWorker: SecondScreenWorkerLogic?
    var secondScreenPresenter: SecondScreenPresentationLogic?
    var astronomyDescription: String?

    // MARK: - Public Methods

    func requestInitForm() {
        let astronomyDescription = AstronomyDescriptionChanged.GetAstronomyDescription
            .Response(astronomyDescription: astronomyDescription ?? "")
        secondScreenPresenter?.presentInitForm(astronomyDescription)
    }
}

/// SecondScreenDataStoreProtocol
extension SecondScreenInteractor: SecondScreenDataStore {}
