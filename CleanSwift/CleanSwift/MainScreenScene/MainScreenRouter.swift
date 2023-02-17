// MainScreenRouter.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Роутер главного экрана
final class MainScreenRouter: MainScreenRoutingLogic {
    // MARK: - Public Properties

    var viewController: UIViewController?

    // MARK: - Private Properties

    private var dataStore: MainScreenDataStore?

    // MARK: - Init

    init(dataStore: MainScreenDataStore?) {
        self.dataStore = dataStore
    }

    // MARK: - Public func

    func routToSecondScreenViewController() {
        guard let astronomyDescription = dataStore?.astronomy?.explanation else { return }
        let secondScreenViewController = SecondScreenAssembly.makeSecondModule(astronomyDescription)
        viewController?.navigationController?.pushViewController(secondScreenViewController, animated: true)
    }
}
