//
//  HidingAndGroupingAccessibilityData.swift
//  Project15AccessibilitySandbox
//
//  Created by Aryan Panwar on 30/08/24.
//

import SwiftUI

struct HidingAndGroupingAccessibilityData: View {
    var body: some View {
        Image(decorative: "character")
            .resizable()
            .scaledToFit()
//          OR
        Image(.character)
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
        
        
//        VStack {
//            Text("Your score is")
//            Text("1000")
//                .font(.title)
//        }
//        .accessibilityElement(children: .combine)
        
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Your score is 1000")
        
    }
}

#Preview {
    HidingAndGroupingAccessibilityData()
}
