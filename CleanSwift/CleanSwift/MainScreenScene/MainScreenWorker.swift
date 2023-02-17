// MainScreenWorker.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Воркер главного экрана
final class MainScreenWorker: MainScreenWorkerLogic {
    // MARK: - Public Properties

    var networkService: NetworkServiceProtocol?
    var imageService: ImageServiceProtocol?

    // MARK: - Public Methods

    func getAstronomyData(completion: @escaping (Result<Astronomy, Error>) -> Void) {
        networkService?.fetchAstronomyInfo(completion: { result in
            switch result {
            case let .success(data):
                completion(.success(data))
            case let .failure(error):
                print(error.localizedDescription)
            }
        })
    }

    func getAstronomyImage(completion: @escaping (Result<Data, Error>) -> ()) {
        imageService?.fetchImage(completion: { result in
            switch result {
            case let .success(data):
                completion(.success(data))
            case let .failure(error):
                print(error)
            }
        })
    }
}
