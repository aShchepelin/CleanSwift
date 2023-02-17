// ImageService.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Сервис загрузки изображения из сети
final class ImageService: ImageServiceProtocol {
    // MARK: - Private Properties

    private var dataTask: URLSessionDataTask?

    // MARK: - Public Methods

    func fetchImage(completion: @escaping (Result<Data, Error>) -> ()) {
        guard let url = URL(string: "\(Constants.imageURL)") else { return }
        dataTask = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                return
            }
            DispatchQueue.main.async {
                completion(.success(data))
            }
        }
        dataTask?.resume()
    }
}
