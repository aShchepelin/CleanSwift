// MainScreenPresenter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Презентер главного экрана
final class MainScreenPresenter: MainScreenPresentationLogic {
    // MARK: - Public Properties

    var mainScreenViewController: MainScreenDisplayLogic?

    // MARK: - Public Methods

    func presentInitForm(_ request: MainScreenInputModel.InitForm.Response) {
        let astronomyInfo = MainScreenInputModel.InitForm.ViewModel(
            astronomyInfo: request.astronomyInfo,
            astronomyImage: nil
        )
        mainScreenViewController?.displayInitForm(astronomyInfo)
    }

    func presentWebURL(_ request: MainScreenInputModel.InitForm.Response) {
        let astronomyImageData = MainScreenInputModel.InitForm.ViewModel(
            astronomyInfo: nil,
            astronomyImage: request.astronomyImage
        )
        mainScreenViewController?.displayWebURL(astronomyImageData)
    }
}
