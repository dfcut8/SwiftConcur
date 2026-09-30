//
//  ContentView.swift
//  SwiftConcur
//
//  Created by host1812 on 9/30/26.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var image: Image?
    @State private var isLoading = false
    private let service = PhotoService()
    
    var body: some View {
        VStack {
            if let image { image.resizable().scaledToFit() }
            Button("Load Photos") {
                Task {
                    isLoading = true
                    if let data = try await service.loadImageData(),
                       let uiImage = UIImage(data: data) {
                        image = Image(uiImage: uiImage)
                    }
                    isLoading = false
                }
            }
            if isLoading { ProgressView() }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
