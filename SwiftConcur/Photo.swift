//
//  Photo.swift
//  SwiftConcur
//
//  Created by host1812 on 9/30/26.
//

import Foundation

struct Photo : Identifiable, Sendable {
    let id: String
    let author: String
    let imageData: Data
}
