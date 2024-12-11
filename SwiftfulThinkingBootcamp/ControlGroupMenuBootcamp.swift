//
//  ControlGroupMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/7/24.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My menu") {
            ControlGroup("One") {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
                Button("Tres") {
                    
                }
                Menu("How are you?") {
                    Button("Good") {
                        
                    }
                    Button("Bad") {
                        
                    }
                }
                
            }
            Button("Two") {
                
            }
            Menu("Three") {
                Button("Hi") {
                    
                }
                Button("Hello") {
                    
                }
                Menu("How are you?") {
                    Button("Good") {
                        
                    }
                    Button("Bad") {
                        
                    }
                    
                }
            }
            
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
