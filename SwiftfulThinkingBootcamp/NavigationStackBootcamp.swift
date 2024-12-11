//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/5/24.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits: [String] = [
        "Apple", "Orange", "Banana"
    ]
    @State private var stackPath: [String] = []
    
    var body: some View {
        // stackpath inside the navigationStack messes the int navigationDestinations
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super seque!") {
                        stackPath.append(contentsOf: [
                            "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit, label: {
                            Text(fruit)
                        })
                    }
                    
                    ForEach(0..<10) { x in
                        
                        NavigationLink(value: x, label: {
                            Text("Click me \(x)")
                        })
                    }
                    
                }
                .navigationTitle("Nav Bootcamp")
                .navigationDestination(for: Int.self, destination: { value in
                    MySecondScreen(value: value)
                })
                .navigationDestination(for: String.self, destination: { value in
                    Text("Another string: \(value)")
                })
            }
            
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print(value)
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
