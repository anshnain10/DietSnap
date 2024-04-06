//
//  HomePageView.swift
//  DietSnap
//
//  Created by ANSH on 06/04/24.
//

import SwiftUI

struct HomePageView: View {
    
    var body: some View {
        
            TabView {
                ContentView()
                    .tabItem {
                        Image("Today")
                    Text("Activity")}
                ContentView()
                    .tabItem { Text("Guide")
                    Image("Plan")}
                ContentView()
                    .tabItem { Text("Camera")
                        
                        Image("Camera")
}
                ContentView()
                    .tabItem { Text("Feed")
                        
                        Image("Tasks")}
                ContentView()
                    .tabItem {Text("Profile")
                        
                        Image("Profile")}
                
            }.frame(height: 860).background(Color.black).ignoresSafeArea()
        
    }
}

#Preview {
    HomePageView()
}

