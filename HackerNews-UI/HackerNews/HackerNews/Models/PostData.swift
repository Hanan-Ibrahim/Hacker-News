//
//  PostData.swift
//  HackerNews
//
//  Created by Hanoudi on 1/4/21.
//  Copyright © 2021 Hanan. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
