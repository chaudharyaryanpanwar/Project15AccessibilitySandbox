//
//  HandlingVoiceInputInSwiftUI.swift
//  Project15AccessibilitySandbox
//
//  Created by Aryan Panwar on 30/08/24.
//

import SwiftUI

struct HandlingVoiceInputInSwiftUI: View {
    @State private var bgColor : Color = Color.cyan
    var body: some View {
        Button("Tap Me"){
            bgColor = Color.gray
        }
        .background(bgColor)
        
        Button("John Fitzgerald Kennedy"){
            print("Button Tapped")
        }
        .accessibilityInputLabels(["John Fitzerland Kennedy" , "Kennedy" , "JFK"])
    }
}

#Preview {
    HandlingVoiceInputInSwiftUI()
}
