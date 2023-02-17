// NetworkServiceProtocol.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Сервис по запросу информации из API
protocol NetworkServiceProtocol {
    func fetchAstronomyInfo(completion: @escaping (Result<Astronomy, Error>) -> Void)
}
