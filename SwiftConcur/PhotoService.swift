//
//  PhotoService.swift
//  SwiftConcur
//
//  Created by host1812 on 9/30/26.
//

import Foundation

struct PhotoService {
    func loadImageData(_ id: String? = nil) async throws -> Data? {
        let url: URL?
        if let id {
            url = URL(string: "https://picsum.photos/id/\(id)/2000/3000")
        } else {
            url = URL(string: "https://picsum.photos/2000/3000")
        }
        
        if let url {
            let (data, _) = try await URLSession.shared.data(from: url)
            return data
        }
        print("we should never reach this")
        return nil
    }
}
