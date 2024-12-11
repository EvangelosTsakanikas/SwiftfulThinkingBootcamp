//
//  AnimationUpdatedBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/6/24.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Action") {
                animate1.toggle()
            }
            Button("Action 2") {
                animate2.toggle()
            }
            
            ZStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                    .background(Color.green)
                    .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                    .background(Color.orange)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
        }
        .animation(.spring(), value: animate1)
//        .animation(.easeInOut, value: animate2)
        .animation(.linear(duration: 5), value: animate2)
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
