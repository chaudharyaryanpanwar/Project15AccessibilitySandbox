//
//  ReadingTheValueOfControls.swift
//  Project15AccessibilitySandbox
//
//  Created by Aryan Panwar on 30/08/24.
//

import SwiftUI

struct ReadingTheValueOfControls: View {
    
    @State private var value = 10
    
    var body: some View {
        VStack {
            Text("Value : \(value)")
            
            Button("Increment"){
                value += 1
            }
            
            Button("Decrement"){
                value -= 1
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case.increment :
                value += 1
            case.decrement :
                value -= 1
            default :
                print("Not handled")
            }
        }
    }
}

#Preview {
    ReadingTheValueOfControls()
}
