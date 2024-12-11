//
//  ObservableBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/7/24.
//

import SwiftUI

@Observable class ObservableViewModel {
    var title: String = "Some title"
}

struct ObservableBootcamp: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "Sandra is a beautiful girl".capitalized
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
        
//        Text("Sandra is a beautiful girl".capitalized)
//            .font(.largeTitle)
//        Image(systemName: "heart.fill")
//            .resizable()
//            .scaledToFit()
//            .foregroundColor(Color.red)
//            .frame(width: 300, height: 300)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Sandra is a beautiful girl".capitalized
        }
    }
}

struct SomeThirdView: View {
    @Environment(ObservableViewModel.self) var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third view".capitalized
        }
    }
}

#Preview {
    ObservableBootcamp()
}
