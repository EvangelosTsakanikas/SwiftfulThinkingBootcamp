//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 31/10/24.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100, alignment: .center)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100, alignment: .center)
//            }
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100, height: 100, alignment: .center)
//            }
//            else {
//                Circle()
//                    .frame(width: 100, height: 100, alignment: .center)
//                Rectangle()
//                    .frame(width: 100, height: 100, alignment: .center)
//            }
        }
    }
}


struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
