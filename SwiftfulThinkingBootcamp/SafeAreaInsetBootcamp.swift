//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/6/24.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe area insets")
            .navigationBarTitleDisplayMode(.inline)
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(.circle)
//                    .padding()
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(.circle)
//                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
