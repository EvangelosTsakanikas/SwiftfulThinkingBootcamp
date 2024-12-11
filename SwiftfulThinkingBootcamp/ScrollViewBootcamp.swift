//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 31/10/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            HStack {
//                ForEach(0..<50) {index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300, alignment: .center)
//                }
//            }
//        })
        ScrollView {
            LazyVStack {
                ForEach(0..<100) {index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack(content: {
                            ForEach(0..<20, content: { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150, alignment: .center)
                                    .shadow(color: Color.gray, radius: 10, x: 0.0, y: 0.0)
                                    .padding()
                            })
                        })
                    })
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
