//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 2/11/24.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20.0) {
                    Text("This text is primary")
                        .foregroundColor(Color.primary)
                    Text("This text is secondary")
                        .foregroundColor(Color.black)
                    Text("This text is black")
                        .foregroundColor(Color.black)
                    Text("This text is white")
                        .foregroundColor(Color.white)
                    Text("This text is red")
                        .foregroundColor(Color.red)
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? Color.green : Color.yellow)
                }
                
            }
            .navigationTitle("DarkMode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
            DarkModeBootcamp()
                .preferredColorScheme(.light)
        }
    }
}
