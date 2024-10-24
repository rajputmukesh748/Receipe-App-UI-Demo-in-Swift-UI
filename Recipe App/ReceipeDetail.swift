//
//  ReceipeDetail.swift
//  Recipe App
//
//  Created by apple on 19/10/24.
//

import SwiftUI

struct ReceipeDetail: View {
    
    let receipe: Recipe
    
    
    func loadImage(name: String) -> UIImage? {
        return UIImage(named: name)
    }
    
    var body: some View {
        NavigationView(){
            ScrollView{
                VStack(alignment: .leading) {
                    ZStack(alignment: .bottomLeading){
                        if let uiImage = loadImage(name: receipe.imageName){
                            Image(uiImage: uiImage)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 200)
                                .frame(maxWidth: .infinity)
                                .clipped()
                        } else {
                            Color.black
                                .frame(height: 200)
                                .frame(maxWidth: .infinity)
                        }
                        
                        Rectangle()
                            .foregroundColor(.black)
                            .opacity(0.4)
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                        
                        Text(receipe.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding([.leading, .bottom], 10)
                    }
                    
                    HStack {
                        Label("\(receipe.servings)", systemImage: "person.2.fill")
                        Spacer()
                        Label("\(receipe.prepTime)", systemImage: "clock")
                        Spacer()
                        Label("\(receipe.cookTime)", systemImage: "flame")
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text("Ingredients")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        ForEach(receipe.ingredients, id:\.self ){ ingredient in
                            Text("• \(ingredient)")
                                .font(.headline)
                                .padding(.vertical, 5)
                        }
                        
                        Text(receipe.instructions)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                    
                }.background(Color(UIColor.systemGroupedBackground))
            }
        }
    }
}

#Preview {
    ReceipeDetail(receipe: SampleData.recipes[0])
}
