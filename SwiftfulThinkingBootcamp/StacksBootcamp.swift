//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 30/10/24.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
//        VStack(alignment: .trailing, spacing: nil, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        })
//        ZStack(alignment: .top, content: {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 30, content: {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom, content: {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.pink)
//                    .frame(width: 75, height: 75)
//                    Rectangle()
//                        .fill(Color.blue)
//                    .frame(width: 25, height: 25)
//                })
//                .background(Color.white)
//            })
//            .background(Color.black)
//        })
//        VStack(alignment: .center, spacing: 20, content: {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Items in your cart: ")
//                .font(.caption)
//                .foregroundColor(Color.gray)
//        })
        VStack(alignment: .center, spacing: 50, content: {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100, alignment: .center)
                )
            
        })
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
