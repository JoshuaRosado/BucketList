//
//  ContentView.swift
//  BucketList
//
//  Created by Joshua Rosado Olivencia on 8/31/25.
//

import SwiftUI

struct ContentView:View {
    var body: some View {
        Button("Read and Write") {
            // Get the utf8 coding and convert it to pure Data
            let data = Data("Test Message".utf8)
            // Decide where to save it
            let url = URL.documentsDirectory.appending(path: "message.txt")
            
            do {
                // Try writing to our url
                try data.write(to: url, options: [.atomic, .completeFileProtection])
                // Put it back into a String
                let input = try String(contentsOf: url)
                print(input)
            } catch{
                print(error.localizedDescription)
            }
            
        }
    }
    
   
}

#Preview {
    ContentView()
}
