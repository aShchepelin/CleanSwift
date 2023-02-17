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

    /// Имя артиста
    let title: String
    /// Фотография артиста
    let photo: String
    /// Описание
    let explanation: String
}
