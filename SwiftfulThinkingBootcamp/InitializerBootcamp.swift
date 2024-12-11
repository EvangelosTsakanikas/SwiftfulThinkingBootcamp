//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 30/10/24.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == Fruit.apple {
            self.title = "Apples"
            self.backgroundColor = Color.red
        } else {
            self.title = "Oranges"
            self.backgroundColor = Color.orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(Color.white)
            
        }
        .frame(width: 150, height: 150, alignment: .center)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 25, fruit: .apple)
            InitializerBootcamp(count: 5, fruit: .orange)
        }
    }
}
