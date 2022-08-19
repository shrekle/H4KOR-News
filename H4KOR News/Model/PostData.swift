//
//  PostData.swift
//  H4KOR News
//
//  Created by adrian garcia on 8/18/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {//have to make it computed var - cant initialize it with value of objectID cuz objectID doesnt have a value yet
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
    
}
