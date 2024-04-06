//
//  FoodPageView.swift
//  DietSnap
//
//  Created by ANSH on 03/04/24.
//

import SwiftUI

struct FoodPageView: View {
    
    @State private var recipeData: RecipeDetails?
    private let networkManager = FoodPageManager()
    var body: some View {
     
        ScrollView{
            VStack {
                if let recipeData = recipeData{
                    ZStack {
                        Image("chicken_fried_resized").resizable().aspectRatio(contentMode: .fit).frame(maxWidth: .infinity)
                        
                        HStack(spacing: 90){
                            VStack(alignment: .leading){
                                Text("Food Information").fontWeight(.bold).foregroundStyle(Color.white)
                                Text("Fried Chicken ").fontWeight(.bold).font(.title).foregroundStyle(Color.white)
                            }
                            ZStack{
                                Image("Rectangle")
                                VStack{
                                    Text("\(Int(recipeData.healthRating.rounded()))").fontWeight(.bold).foregroundStyle(Color.white).padding(3)
                                    Text("out of 100").fontWeight(.bold).foregroundStyle(Color.white).font(.system(size: 10))
                                }
                            }
                        }.padding(.top,230)
                    }
                    VStack(alignment: .leading){
                        Text("Description").fontWeight(.bold).foregroundStyle(Color.black).font(.system(size: 25)).padding(.leading,5)
                        Spacer()
                        Text((recipeData.description)).font(.system(size: 25)).fontWeight(.medium).fixedSize(horizontal: false, vertical: true).padding(.horizontal,5)
                    }
                    VStack(alignment:.leading){
                        Text("MacroNutrients").fontWeight(.bold).foregroundStyle(Color.black).font(.system(size: 25)).padding(.top).padding(.leading,5)
                        Image("Rectangle 1657")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .overlay(
                                GeometryReader { geometry in
                                    VStack(alignment: .center, spacing: 10) {
                                        HStack(spacing: 80) {
                                            
                                            Text("Per Serve")
                                                .foregroundColor(.black)
                                                .font(.system(size: 15))
                                            
                                            Text("Per 250gm")
                                                .foregroundColor(.black)
                                                .font(.system(size: 15))
                                            
                                        }
                                        Image("Line 1")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 370,height: 1).padding(.trailing,30)

                                        ForEach(0..<min(recipeData.servingSizes.count, 6), id: \.self) { index in
                                            HStack {
                                                Text(recipeData.servingSizes[index].name)
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 10))
                                                    .padding(.leading)
                                                    .frame(minWidth: 100, alignment: .leading)

                                                Text("\(Int(recipeData.servingSizes[index].value.rounded())) \(recipeData.servingSizes[index].units)")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 10))
                                                    .padding(.trailing)
                                                Spacer()
                                                Text("\(Int(recipeData.servingSizes[index].value.rounded())) \(recipeData.servingSizes[index].units)")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 10))
                                                    .padding(.trailing)

                                                Spacer()
                                            }
                                            .padding(.vertical, 2)
                                            .frame(width: geometry.size.width, alignment: .leading)
                                            
                                            .cornerRadius(5)
                                            .padding(.horizontal, 10)
                                        }
                                    }
                                    .frame(width: geometry.size.width)
                                    .padding()
                                }
                            ).padding(.all,5)

                        
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Facts").fontWeight(.bold).font(.title).padding()
                        ScrollView(.horizontal){
                            
                            HStack {
                                ForEach(recipeData.genericFacts.indices, id: \.self) { index in
                                    ImageWithFact(fact: recipeData.genericFacts[index])
                                 
                                }
                            }
                        }
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Similiar Items").fontWeight(.bold).font(.title).padding()
                        ScrollView(.horizontal){
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 25.0).frame(width: 160,height: 125).overlay(
                                    ZStack{
                                        Image("Rectangle 1659").resizable().clipShape(RoundedRectangle(cornerRadius: 25.0))
                                        Text("Chicken Tandoor").fontWeight(.bold).font(.title3).foregroundStyle(Color.white).fixedSize(horizontal: true, vertical: false).padding(.top,90)
                                        
                                    }).padding(.all)
                                
                                RoundedRectangle(cornerRadius: 25.0).frame(width: 160,height: 125).overlay(
                                    ZStack{
                                        Image("Rectangle 1660").resizable().clipShape(RoundedRectangle(cornerRadius: 25.0))
                                        Text("Pulav").fontWeight(.bold).font(.title3).foregroundStyle(Color.white).padding(.top,90)
                                        
                                    }).padding(.all)
                                
                                RoundedRectangle(cornerRadius: 25.0).frame(width: 160,height: 125).overlay(
                                    ZStack{
                                        Image("Rectangle 1661").resizable().clipShape(RoundedRectangle(cornerRadius: 25.0))
                                        Text("Dal Fry").fontWeight(.bold).font(.title3).foregroundStyle(Color.white).padding(.top,90)
                                        
                                    }).padding(.all)
                            }
                            
                            
                            
                        }
                    }
                }else{
                    Text("Loading...")
                }
            }.onAppear {
                fetchData()
            }
        }.ignoresSafeArea()
    }
    func fetchData() {
        networkManager.fetchData { data in
            recipeData = data
        }
    }
}
struct ImageWithFact: View {
    let fact: String
    
    var body: some View {
        ZStack {
            Image("Rectangle (1)")
                

            VStack {
                Text("Did you know?")
                    .font(.headline)
                    .padding(.bottom)

                ScrollView {
                    Text(fact).font(.system(size: 20))
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                }
                
            }.frame(width: 280,height: 120)
        }.frame(maxWidth: .infinity)
        .padding()
    }
}

#Preview {
    FoodPageView()
}
