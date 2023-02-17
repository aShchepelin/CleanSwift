// SecondScreenRouter.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Роутер второго экрана
final class SecondScreenRouter: SecondScreenRoutingLogic {
    // MARK: - Public Properties

    var secondScreenViewController: SecondScreenDisplayLogic?

    // MARK: - Private Properties

    private var dataStore: SecondScreenDataStore?

    // MARK: - Init

    init(dataStore: SecondScreenDataStore?) {
        self.dataStore = dataStore
    }
}
