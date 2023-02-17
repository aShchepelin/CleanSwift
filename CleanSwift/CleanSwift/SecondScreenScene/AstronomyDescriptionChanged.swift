// AstronomyDescriptionChanged.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Модели
enum AstronomyDescriptionChanged {
    enum GetAstronomyDescription {
        /// Запрос
        struct Request {}
        /// Ответ
        struct Response {
            let astronomyDescription: String
        }
        /// Вью Модель
        struct ViewModel {
            let astronomyDescription: String
        }
    }
}
