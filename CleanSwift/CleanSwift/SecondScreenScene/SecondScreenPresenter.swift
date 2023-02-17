// SecondScreenPresenter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Презентер второго экрана
final class SecondScreenPresenter: SecondScreenPresenterProtocol {
    // MARK: - Public Properties

    var secondScreenViewController: SecondScreenViewControllerProtocol?

    // MARK: - Public Methods

    func presentInitForm(_ request: AstronomyDescriptionChanged.GetAstronomyDescription.Response) {
        let astronomyInfo = AstronomyDescriptionChanged.GetAstronomyDescription
            .ViewModel(astronomyDescription: request.astronomyDescription)
        secondScreenViewController?.displayInitForm(astronomyInfo)
    }
}
