//
//  ContentView.swift
//  iwannaseeifitworks
//
//  Created by Millan Bhandari on 8/31/22.
//

import SwiftUI

struct ContentView: View {
    @State var num1 = ""
    @State var num2 = ""
    @State var num3 = ""
    @State var array = [0]
    @State var text = ""
    var body: some View {
        HStack {
            Text("num 1")
            TextField("", text: $num1)
                .frame(width: 50, height: 50, alignment: .center)
            Text("num 2")
            TextField("", text: $num2)
                .frame(width: 50, height: 50, alignment: .center)
            Text("num 3")
            TextField("", text: $num3)
                .frame(width: 50, height: 50, alignment: .center)
        }
        .onAppear {
            array.remove(at: 0)
        }
        Button("Submit") {
            sortNumbers()
            arraycalc()
        }
        Text(text)
    }
    func sortNumbers() {
        let numA = Int(num1)!
        let numB = Int(num2)!
        let numC = Int(num3)!
        array.append(numA)
        array.append(numB)
        array.append(numC)
        array.sort()
        print(array)
    }
    func arraycalc() {
        if array[1] - array[0] == 1 {
            if array[2] - array[1] == 1 {
                text = "true"
            }
            else {
                text = "false"
            }
        }
        array.removeAll()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
