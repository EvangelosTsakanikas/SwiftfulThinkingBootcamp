//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 3/11/24.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUsername: String?
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack(spacing: 20.0) {
            
//            guard let userID = currentUserID else {
//                displayText = "Error. There is no user id"
//                return
//            }
            
            Text(currentUsername ?? "Add name here")
            
            if let name = currentUsername {
                Text(name)
            }
            
            Button {
                let name = "Emily"
                currentUsername = name
            } label: {
                Text("Save".uppercased())
            }

        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
