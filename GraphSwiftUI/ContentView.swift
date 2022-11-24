//
//  ContentView.swift
//  GraphSwiftUI
//
//  Created by Adriano Rodrigues Vieira on 23/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ChartView()
            .padding(.all, 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
