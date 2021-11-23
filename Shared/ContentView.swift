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
                
            } // Main Content Ends
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
