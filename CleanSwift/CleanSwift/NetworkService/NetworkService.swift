// NetworkService.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Сервис по запросу данных о артисте с API
final class NetworkService: NetworkServiceProtocol {
    // MARK: - Public Methods

    func fetchAstronomyInfo(completion: @escaping (Result<Astronomy, Error>) -> Void) {
        guard let url = URL(string: Constants.url) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            do {
                let spacePhoto = try JSONDecoder().decode(Astronomy.self, from: data)
                completion(.success(spacePhoto))
            } catch {
                completion(.failure(error))
            }
        }
        .resume()
    }
}
