//
//  ContentView.swift
//  Project15AccessibilitySandbox
//
//  Created by Aryan Panwar on 30/08/24.
//

import SwiftUI

struct ContentView1: View {
    let pictures = [
        "ales-krivec-15949" ,
        "galina-n-18983" ,
        "kevin-horstmann-141705" ,
        "nicolas-tissot-335096"
    ]
    let labels = [
        "Tulips" ,
        "Frozen tree buds" ,
        "SunFlowers" ,
        "Firworks"
    ]
    @State private var selectedPicture = Int.random(in: 0...3)
    
//    var body: some View {
//        Image(pictures[selectedPicture])
//            .resizable()
//            .scaledToFit()
//            .onTapGesture {
//                selectedPicture = Int.random(in: 0...3)
//            }
//            .accessibilityLabel(labels[selectedPicture])
//            .accessibilityAddTraits(.isButton)
//            .accessibilityRemoveTraits(.isImage)
//    }
    
//      OR
    var body : some View {
        Button{
            selectedPicture = Int.random(in: 0...3)
        } label : {
            Image(pictures[selectedPicture])
                .resizable()
                .scaledToFit()
        }
        .accessibilityLabel(labels[selectedPicture])
    }
}

#Preview {
    ContentView1()
}
