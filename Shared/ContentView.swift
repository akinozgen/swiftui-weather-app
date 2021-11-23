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
                gradient: Gradient(colors: [Color.blue, Color("LightBlue")]),
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
                .padding(.bottom, 60)
                // Weather status ends
                                
                // Days
                HStack(spacing: 20) {
                    
                    BanaBirGunVerin(dayOfWeek: "MON", imageName: "cloud.sun.fill", celcius: 18)
                    BanaBirGunVerin(dayOfWeek: "TUE", imageName: "cloud.drizzle.fill", celcius: 12)
                    BanaBirGunVerin(dayOfWeek: "WED", imageName: "wind.snow", celcius: 8)
                    BanaBirGunVerin(dayOfWeek: "THU", imageName: "cloud.sun.rain.fill", celcius: 10)
                    BanaBirGunVerin(dayOfWeek: "FRI", imageName: "cloud.bolt.rain.fill", celcius: 8)
                    
                }
                // Days ends
                
                Spacer()
                
                // Button Starts
                Button {
                    print("anan")
                } label: {
                    Text("Search Again")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(5.0)
                        .font(.system(size: 20, weight: .semibold))
                }
                // Buttons Ends
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

struct BanaBirGunVerin: View {
    
    var dayOfWeek: String
    var imageName: String
    var celcius: CGFloat
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 14, weight: .semibold, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
            
            Text("\(Int(celcius))°")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .bold))
        }
    }
}
