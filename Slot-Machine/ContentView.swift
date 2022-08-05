//
//  ContentView.swift
//  Slot-Machine
//
//  Created by P.A. van Luijt on 25/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var creditwaarde = 20
    @State var a: Int = 1
    @State var b: Int = 2
    @State var c: Int = 3
    
    var body: some View {
        VStack {
            Spacer()
            Text("Emmer Slots")
                .font(.largeTitle)
            Spacer()
           
            HStack {
                Text("credits   \(creditwaarde)").font(.largeTitle)
                   
                  }
            Spacer()
            
            HStack {
                Image("fruit\(a)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(b)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(c)").resizable().aspectRatio(contentMode: .fit)
            }
            
            
            Spacer()
            Button("Draai") {
                a = Int.random(in: 1...3)
                b = Int.random(in: 1...3)
                c = Int.random(in: 1...3)
                if (a==b) && (b==c) {
                    creditwaarde += 10
                }
                else { creditwaarde -= 1
                }
            }
            .padding()
               .padding([.leading,.trailing], 40)
                .foregroundColor(.white)
                .background(Color(.systemPink))
                .cornerRadius(25)
                .font(.system(size: 18,weight: .bold,design: .default))
                Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
