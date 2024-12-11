//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/6/24.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 😊",
        "Average 🙂",
        "Very bad 😡"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.5).ignoresSafeArea()
            
            VStack {
                Button("CLICK ME") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottom)) {
                    VStack {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {
                                
                            }
                            
                            if option != feedbackOptions.last {
                                Divider()
                            }
                        }
                    }
                    .padding()
                    .presentationCompactAdaptation(.popover)
                }
                
                Spacer()
            }
//            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top)) {
//                Text("Hello, subscribers")
//                    .presentationCompactAdaptation(.popover)
//                    .padding()
//            }
            //            .popover(isPresented: $showPopover) {
            //                Text("Hello, subscribers")
            //                    .presentationCompactAdaptation(.popover)
            //                    .padding()
            //            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
