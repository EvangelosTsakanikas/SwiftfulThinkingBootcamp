//
//  ForeachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 30/10/24.
//

import SwiftUI

struct ForeachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices, id: \.self) { index in
                    Text("\(data[index]): \(index)")
                    .font(.title)
                }
//            ForEach(0..<10, content: { index in
//                HStack {
//                    Text("Index is: \(index)")
//                    Circle()
//                        .frame(width: 30, height: 30, alignment: .center)
//                }
//            })
        }
    }
}

struct ForeachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamp()
    }
}
