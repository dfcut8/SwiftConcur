//
//  ContentView.swift
//  SwiftConcur
//
//  Created by host1812 on 9/30/26.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var isLoading = false
    
    var body: some View {
        VStack {
            if let image { image.resizable().scaledToFit() }
            Button("Load Photos") {
                isLoading = true
                let url = URL(string: "https://picsum.photos/2000/3000")!
                let data = try! Data(contentsOf: url)
                if let uiImage = UIImage(data: data) {
                    image = Image(uiImage: uiImage)
                }
                isLoading = false
            }
            if isLoading { ProgressView() }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
