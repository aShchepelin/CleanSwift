// AppDelegate.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        true
    }

    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        guard let components = NSURLComponents(url: url, resolvingAgainstBaseURL: true),
              let host = components.host
        else {
            return false
        }
        guard let deepLink = DeepLink(rawValue: host) else {
            return false
        }
        let mainScreenViewController = MainScreenViewController()
        mainScreenViewController.handleDeepLink(deepLink)
        return true
    }
}
