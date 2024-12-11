//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/5/24.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        ZStack {
            Color.red
            
            VStack {
                TextField("Placeholder...", text: $text)
                    .submitLabel(.route)
                    .onSubmit {
                        print("Somehting to the console")
                    }
                TextField("Placeholder...", text: $text)
                    .submitLabel(.next)
                    .onSubmit {
                        print("Somehting to the console")
                    }
                TextField("Placeholder...", text: $text)
                    .submitLabel(.search)
                    .onSubmit {
                        print("Somehting to the console")
                    }
            }
        }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
