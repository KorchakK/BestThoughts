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
            ListModel(title: "Testing long line qwertyui", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Тест", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Испытание", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Проба пера", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Тунец", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Testing long line qwertyui", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Тест", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Испытание", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Проба пера", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0)),
            ListModel(title: "Тунец", discription: "I'll make my label in code so that you can see what's going on. You can set up most of this in Interface Builder too. My setup is a View-Based App with a background image I made in Photoshop to show margins (20 points). The label is an attractive orange color so you can see what's going on with the dimensions.", date: Date(timeIntervalSinceNow: 0))
        ]
    }
}
