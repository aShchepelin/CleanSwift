// SecondScreenInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Интерактор второго экрана
final class SecondScreenInteractor: SecondScreenInteractorProtocol {
    // MARK: - Public Properties

    var secondScreenWorker: SecondScreenWorkerProtocol?
    var secondScreenPresenter: SecondScreenPresenterProtocol?
    var astronomyDescription: String?

    // MARK: - Public Methods

    func requestInitForm() {
        let astronomyDescription = AstronomyDescriptionChanged.GetAstronomyDescription
            .Response(astronomyDescription: astronomyDescription ?? "")
        secondScreenPresenter?.presentInitForm(astronomyDescription)
    }
}

/// SecondScreenDataStoreProtocol
extension SecondScreenInteractor: SecondScreenDataStoreProtocol {}
