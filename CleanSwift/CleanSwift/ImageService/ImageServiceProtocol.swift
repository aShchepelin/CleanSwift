// ImageServiceProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Протокол сервиса загрузки изображения из сети
protocol ImageServiceProtocol {
    func fetchImage(completion: @escaping (Result<Data, Error>) -> ())
}
