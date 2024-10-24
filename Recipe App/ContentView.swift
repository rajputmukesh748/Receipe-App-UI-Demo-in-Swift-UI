//
//  ContentView.swift
//  Recipe App
//
//  Created by apple on 19/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(SampleData.recipes){ receipe in
                NavigationLink(destination: ReceipeDetail(receipe: receipe)){
                    Text(receipe.name)
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
            }.navigationBarTitle("Recipes")
        }
    }
}

#Preview {
    ContentView()
}
