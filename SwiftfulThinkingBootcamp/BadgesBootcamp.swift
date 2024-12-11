//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/5/24.
//

import SwiftUI

// working only on:
// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        
        VStack {
            List {
                Text("Hello world")
                    .badge("New Items")
                Text("Hello world")
                    .badge("New Items")
                Text("Hello world")
                    .badge("New Items")
            }
            
            TabView {
                Color.red
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(5)
                
                Color.green
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(3)
                
                Color.blue
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
            }
        }
        
    }
}

#Preview {
    BadgesBootcamp()
}
