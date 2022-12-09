//
//  PostData.swift
//  H4XOR News
//
//  Created by Philipp Edrich on 09.12.22.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title : String
    let url: String?
}
