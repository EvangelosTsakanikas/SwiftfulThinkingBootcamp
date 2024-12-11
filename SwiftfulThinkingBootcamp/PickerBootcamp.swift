//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 1/11/24.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    var body: some View {
        
        VStack {
            
            Picker(selection: $selection) {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(.segmented)
            
            
            
            Picker(selection: $selection,
                   label:
                    HStack {
                Text("Picker")
                Text(selection)
            }
                .font(.headline)
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue.opacity(0.8), radius: 10, x: 0, y: 10)
                   
                   ,
                   content: {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
            }
            )
            
            
            
            VStack {
                HStack{
                    Text("Age:")
                    Text(selection)
                }
                Picker(
                    selection: $selection) {
                        ForEach(18..<100) { number in
                            Text("\(number)")
                                .font(.headline)
                                .foregroundColor(Color.red)
                                .tag("\(number)")
                        }
                    } label: {
                        Text("Picker")
                    }
                //                .pickerStyle(WheelPickerStyle())
                //                .background(Color.gray.opacity(0.2))
            }
        }
        
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
