// MainScreenInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Интерактор главного экрана
final class MainScreenInteractor: MainScreenBusinessLogic {
    // MARK: - Public Properties

    var mainScreenPresenter: MainScreenPresentationLogic?
    var mainScreenWorker: MainScreenWorkerLogic?
    var astronomy: Astronomy?

    // MARK: - Public Methods

    func requestInitForm() {
        mainScreenWorker?.getAstronomyData(completion: { [weak self] result in
            guard let self = self else { return }
            switch result {
            case let .success(data):
                self.astronomy = data
                let response = MainScreenInputModel.InitForm.Response(
                    astronomyInfo: data,
                    astronomyImage: nil
                )
                self.mainScreenPresenter?.presentInitForm(response)
            case let .failure(error):
                print(error.localizedDescription)
            }
        })
    }

    func requestWebURL() {
        mainScreenWorker?.getAstronomyImage(completion: { [weak self] result in
            guard let self = self else { return }
            switch result {
            case let .success(data):
                let response = MainScreenInputModel.InitForm.Response(
                    astronomyInfo: nil,
                    astronomyImage: data
                )
                self.mainScreenPresenter?.presentWebURL(response)
            case let .failure(error):
                print(error)
            }
        })
    }
}

/// DataStoreProtocol
extension MainScreenInteractor: MainScreenDataStore {}
