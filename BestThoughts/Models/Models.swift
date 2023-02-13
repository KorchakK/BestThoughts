//
//  Models.swift
//  BestThoughts
//
//  Created by Konstantin Korchak on 13.02.2023.
//

import Foundation

struct ListModel {
    let title: String
    let discription: String
    let date: Date
    
    static func getMokList() -> [ListModel] {
        return [
            ListModel(title: "Test", discription: "Test", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Тест", discription: "Test", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Испытание", discription: "Test", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Проба пера", discription: "Test", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Тунец", discription: "Test", date: Date(timeIntervalSinceNow: 0))
        ]
    }
}
