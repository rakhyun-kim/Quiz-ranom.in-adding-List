//
//  ContentView.swift
//  lesson3challenge
//
//  Created by Rakhyun Kim on 8/8/23.
//

import SwiftUI

struct ContentView: View {
    
    var array = ["a", "b", "c", "d", "e", "f"]
    
    @State var items = [String]()
    
    
    
    var body: some View {
        VStack {
            List(items, id: \.self) { quiz in
                Text(quiz)
                }

            HStack {
                Button {
                    // Each time the button is tapped, choose a random word from the array and put it in the list.
                    let randIndex = Int.random(in: 0...array.count-1)
                    items.append(array[randIndex])
                    
                } label: {
                    Text("random")
                    
                }
            }
            }

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
