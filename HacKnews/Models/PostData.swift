//
//  File.swift
//  HacKnews
//
//  Created by Cassy on 4/24/20.
//  Copyright © 2020 Cassy. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let title: String
    let points: Int
    let url: String?
    let objectID: String
    var id: String {
        return objectID
    }
}
