//
//  Langage.swift
//  SwiftUI-Demo-App
//
//  Created by Clusel Mathieu on 18/09/2023.
//

import Foundation

struct Language : Identifiable {
    let id = UUID()
    
    let name: String
    let description: String
    let image: String
}

extension Language {
    static let list : [Language] = [
        Language(name: "Kotlin", description: "Langage de programmation Android", image: "kotlin"),
        Language(name: "Swift", description: "Langage de programmation iOS", image: "swift")
    ]
}
