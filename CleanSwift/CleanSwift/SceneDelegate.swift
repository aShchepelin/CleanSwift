// SceneDelegate.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Scene Delegate
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        let makeMainScreenViewController = MainScreenAssembly.makeMainModule()
        let navigationController = UINavigationController(rootViewController: makeMainScreenViewController)
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
    }
}
