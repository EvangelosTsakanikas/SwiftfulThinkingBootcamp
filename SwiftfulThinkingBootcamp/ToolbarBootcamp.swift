//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/6/24.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
                
                Text("Hey 😆")
                    .foregroundColor(Color.white)
                
            }
            .navigationTitle("Toolbar")
            //            .navigationBarItems(
            //                leading: Image(systemName: "heart.fill"),
            //                trailing: Image(systemName: "gear"))
            .toolbar(content: {
                ToolbarItem(
                    placement: .navigationBarLeading,
                    content: {
                        Image(systemName: "heart.fill")
                    })
                ToolbarItem(
                    placement: .navigationBarTrailing,
                    content: {
                        HStack {
                            Image(systemName: "heart.fill")
                            Image(systemName: "house.fill")
                        }
                    })
                ToolbarItem(
                    placement: .navigationBarTrailing,
                    content: {
                        Image(systemName: "heart.fill")
                    })
                ToolbarItem(
                    placement: .bottomBar,
                    content: {
                        Image(systemName: "gear")
                    })
            })
            //            .toolbar(.hidden, for: .automatic)
//            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu(content: {
                Button("Screen 1") {
                    
                }
                Button("Screen 1") {
                    
                }
            })
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
