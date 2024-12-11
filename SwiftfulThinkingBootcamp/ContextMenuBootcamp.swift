//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 1/11/24.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.gray
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(Color.white)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu {
            Button {
                backgroundColor = Color.yellow
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = Color.red
            } label: {
                Text("Report Post")
            }
            
            Button {
                backgroundColor = Color.green
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }

        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
