//
//  ContentView.swift
//  Shared
//
//  Created by Akın Özgen on 23.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).edgesIgnoringSafeArea(.all)
            // Background gradient ends
            
            VStack { // Main Content
                
                // City Name
                Text("Çanakkale, TR")
                    .font(
                        .system(size: 32, weight: .medium, design: .rounded)
                    )
                    .foregroundColor(.white)
                    .padding()
                
                // Weather Status Icon and weather in degrees
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180, alignment: .center)
                    
                    
                    Text("18°")
                        .font(.system(size: 70, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                    
                }
                // Weather status ends
                
                Spacer()
            } // Main Content Ends
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
