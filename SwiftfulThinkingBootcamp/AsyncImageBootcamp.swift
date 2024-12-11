//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/5/24.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        VStack {
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                case .failure:
                    Image(systemName: "questionmark")
                default:
                    Image(systemName: "questionmark")
                }
            }
            
            AsyncImage(url: url, content: { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: .infinity, height: 350)
                    .cornerRadius(20)
            }, placeholder: {
                ProgressView()
            })
        }
        
    }
}

#Preview {
    AsyncImageBootcamp()
}
