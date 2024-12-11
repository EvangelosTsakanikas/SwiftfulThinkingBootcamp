//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/6/24.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.7)])
                .presentationDetents([.medium, .large, .fraction(0.1)], selection: $detents)
//                .presentationDetents([.height(800)])
//                .interactiveDismissDisabled()
//                .presentationDragIndicator(.hidden)
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("Medium") {
                    detents = .medium
                }
                Button("fraction") {
                    detents = .fraction(0.1)
                }
                Button("Large") {
                    detents = .large
                }
            }
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
