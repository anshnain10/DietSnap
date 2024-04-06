//
//  ContentView.swift
//  DietSnap
//
//  Created by ANSH on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var fitnessData: FitnessDataResponse?
        private let dataManager = HomePageManager()
    
    @State var isLinkActive = false
    var body: some View {
        //
        NavigationStack{
            
            ScrollView(.vertical){
                VStack{
                    if let data = fitnessData {
                   
                        Text("Today").fontWeight(.bold).font(.system(size: 22))
                        Text("Thursday, 22nd Oct")
                    Spacer()
                    
                    
                    VStack(alignment: .center, spacing: 30){
                        HStack{
                            ZStack(alignment: .center){
                                Text("SET GOAL!").fontWeight(.bold).font(.system(size: 30)).padding()
                                    .overlay(
                                        Circle().stroke(Color.purple,lineWidth: 10).padding().scaledToFill().frame(width:200))
                                    .overlay(
                                        Circle().stroke(Color.yellow,lineWidth: 10).padding().scaledToFill().frame(width: 250))
                            }.padding(.top,80).padding(.leading,85)
                            
                            NavigationLink(destination: FoodPageView().navigationBarBackButtonHidden()
                                .navigationBarItems(leading: Button(action: {
                                    isLinkActive = false
                                    presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    HStack{
                                        Image("BackArrow")
                                        Text("Back")
                                    }.foregroundStyle(Color.white)
                                })) ,
                               isActive: $isLinkActive) {
                                Image("Disclosure")
                            }.padding(.leading,80).padding(.top,80)
                        }.padding(.bottom,80).frame(maxWidth: .infinity,alignment: .center)
                        
                        VStack{
                            HStack(spacing:30){
                                Label{
                                    Text("DietPts")
                                }icon:{
                                    Image("path")
                                    
                                }
                                Label{
                                    Text("ExcercisePts")
                                }icon:{
                                    Image("fitness")
                                    
                                }
                            }
                            VStack(alignment: .center){
                                HStack(spacing:45){
                                    VStack{
                                        Text("1500").font(.system(size: 25)).foregroundStyle(Color.orange)
                                        Text("Cal").font(.system(size: 15))
                                    }
                                    VStack{
                                        Text("3/5").font(.system(size: 25)).foregroundStyle(Color.orange)
                                        Text("Days").font(.system(size: 15))
                                    }
                                    VStack{
                                        Text("88").font(.system(size: 25)).foregroundStyle(Color.orange)
                                        Text("Health Score").font(.system(size: 15))
                                    }
                                }
                                Image("group1425")
                                
                            }
                            .padding(.bottom,1)
                            
                            VStack(alignment: .leading, spacing: 1) {
                                Text("Your Goals").padding(.top).font(.headline).padding(.bottom).padding(.leading)
                                
                                ZStack(alignment: .leading){
                                    Image("BackgroundImage")
                                    
                                    HStack {
                                        Image("imageBody")
                                            .resizable().aspectRatio(contentMode: .fit).frame(width: 54.0, height: 54)
                                            .clipShape(Rectangle()).cornerRadius(15.0)
                                            .overlay(Rectangle().stroke(Color.white,lineWidth: 5)).padding()
                                        
                                        VStack(alignment: .leading, spacing: 3){
                                            Text(data.data.section_3.plan1.planName).font(.system(size: 20))
                                            Text(data.data.section_3.plan1.difficulty       ).fontWeight(.light).font(.system(size: 18))
                                        }
                                        Spacer()
                                        ZStack{
                                            Image("Stroke")
                                            Text(data.data.section_2.accuracy).font(.system(size: 10))
                                        }.padding()
                                    }
                                }.background(Color(hue: 240, saturation: 0.02, brightness: 1)).cornerRadius(15.0)
                            }
                        }}.frame(maxWidth: .infinity)
                    Spacer()
                    VStack(alignment: .leading, spacing: 20){
                        Text("Explore").padding(.top).padding(.leading).font(.headline)
                        HStack(spacing:10){
                            Image("Group 4051").padding(.leading)
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Find Diets").font(.headline)
                                Text("Find premade diets according to your cuisine").font(.system(size: 13)).fixedSize(horizontal: false, vertical: true)
                            }
                            
                        }
                        
                        HStack(spacing:5){
                            Image("Group 4053").padding(.leading)
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Find Nutritionist").font(.headline)
                                Text("Get customized diets to achieve your health goal").font(.system(size: 13)).fixedSize(horizontal: false, vertical: true)
                            }
                        }
                    }
                    } else {
                                    Text("Loading...")
                                }
                }
                    .onAppear {
                        fetchData()
                    }
                }
                .navigationTitle("").navigationBarTitleDisplayMode(.inline).navigationBarItems(leading:  Text("DietSnap").fontWeight(.bold).foregroundStyle(Color.yellow).font(.system(size: 25)))
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbar {
                    
                    ToolbarItem(placement: .topBarTrailing){
                        Button {
                            print("Let's request a new order!")
                        }label: {
                            Label("Bell", systemImage: "bell")
                        }
                        
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        Button {
                            print("Let's request a new order!")
                        }label: {
                            Image("badge")
                        }
                        
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        Button {
                            print("Let's request a new order!")
                        }label: {
                            Image("message24")
                        }
                        
                    }
                }.tint(.black)
                
            }.frame(maxWidth: .infinity, maxHeight: 9090)
            
            
            
            
            
            
        }
    func fetchData() {
            dataManager.fetchData { data in
                fitnessData = data
            }
        }
    
   
}

    



#Preview {
    ContentView()
}
