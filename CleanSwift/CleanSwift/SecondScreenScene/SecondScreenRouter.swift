// SecondScreenRouter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Роутер второго экрана
final class SecondScreenRouter: SecondScreenRouterProtocol {
    // MARK: - Public Properties

    var secondScreenViewController: SecondScreenViewControllerProtocol?

    // MARK: - Private Properties

    private var dataStore: SecondScreenDataStoreProtocol?

    // MARK: - Init

    init(dataStore: SecondScreenDataStoreProtocol?) {
        self.dataStore = dataStore
    }
}
