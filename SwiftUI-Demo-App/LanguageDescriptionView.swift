//
//  ContentView.swift
//  SwiftUI-Demo-App
//
//  Created by Clusel Mathieu on 18/09/2023.
//

import SwiftUI

struct LanguageDescriptionView: View {
    var language : Language
    
    @State private var learnt = false
    
    var body: some View {
        VStack {
            Image(language.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200.0)
            Text(language.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .padding(.all)
            Text(language.description)
            Spacer()
            Button(learnt ? "Appris" : "Apprendre") {
                learnt.toggle()
            }.buttonStyle(.borderedProminent).tint(Color.purple).padding()
        }
        .padding()
    }
}

struct LanguageDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDescriptionView(language: Language.list[0])
    }
}
