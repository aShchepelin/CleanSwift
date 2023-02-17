// Astronomy.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Фотографии космоса
struct Astronomy: Codable {
    enum CodingKeys: String, CodingKey {
        case title
        case photo = "url"
        case explanation
    }

    /// Название фотографии
    let title: String
    /// Фотография
    let photo: String
    /// Описание фотографии
    let explanation: String
}
