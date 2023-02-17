// MainScreenInputModel.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Модели
enum MainScreenInputModel {
    enum InitForm {
        /// Запрос
        struct Request {}
        /// Ответ
        struct Response {
            let astronomyInfo: Astronomy?
            let astronomyImage: Data?
        }

        /// Вью модель
        struct ViewModel {
            let astronomyInfo: Astronomy?
            let astronomyImage: Data?
        }
    }
}
