//
//  ContentView.swift
//  SwiftUI Tutorial: Working with Group
//
//  Created by Alvin Sosangyo on 08/20/22.
//

import SwiftUI

struct ContentView: View {

    let sfSymbolsList = ["pencil", "scribble", "lasso", "folder", "paperplane", "doc", "terminal"]

    var body: some View {

        VStack {

            Group {

                Text("SF Symbols")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                VStack(spacing: 30) {

                    ForEach(sfSymbolsList, id: \.self) { index in
                        Image(systemName: index)
                            .font(.system(size: 50))
                    }

                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)

            }
            .foregroundColor(Color.white)

        }
        .background(Color.blue)

    } // body

} // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
