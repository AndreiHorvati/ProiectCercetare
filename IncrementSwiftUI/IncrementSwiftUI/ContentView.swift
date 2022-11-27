//
//  ContentView.swift
//  IncrementSwiftUI
//
//  Created by Andrei Horvati on 27.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 100) {
            Text("Count: \(count)")
                .font(.title.bold())
                .foregroundColor(count % 2 == 0 ? .green : .red)
            
            HStack(spacing: 20) {
                Button("Increment") {
                    self.count += 1
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title3)
                
                Button("Decrement") {
                    self.count -= 1
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .font(.title3)
            }
         }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.gray
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
