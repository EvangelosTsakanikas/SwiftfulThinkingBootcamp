//
//  NavigationSplitViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/6/24.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, VisionOS

struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil
    
    var body: some View {
        //        NavigationSplitView {
        //            Color.red
        //        } detail: {
        //            Color.blue
        //        }
        
        //        NavigationSplitView {
        //            Color.red
        //        } content: {
        //            Color.blue
        //        } detail: {
        //            Color.green
        //        }
        
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
//                Button(category.rawValue.capitalized) {
//                    selectedCategory = category
//                }
                NavigationLink(category.rawValue, value: category)
            }

            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    
                    switch selectedCategory {
                    case .fruits:
                        List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
//                            Button(fruit.rawValue.capitalized) {
//                                selectedFruit = fruit
//                            }
                            NavigationLink(fruit.rawValue, value: fruit)
                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin!")
            }
        } detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select something")
            }
        }
        .navigationSplitViewStyle(.automatic)
        
    }
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}

enum Fruit: String, CaseIterable {
    case apple, banana, orange
}

#Preview {
    NavigationSplitViewBootcamp()
}
