//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/6/24.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50.0) {
            Text("Hello World")
            
            Group {
                Text("Hello World")
                Text("Hello World")
            }
            .foregroundColor(Color.green)
        }
        .foregroundColor(Color.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
