//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 2/11/24.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "currentUserID"
    @State var displayText: String? = "displayText"
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                Text("Here we are practicing safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // DO NOT USE EVER
                // DO NOT FORCE UNWRAP VALUES
                Text(displayText!)
                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
//                loadData()
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            })
        } else {
            displayText = "Error. There is no user id"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no user id"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        })
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
