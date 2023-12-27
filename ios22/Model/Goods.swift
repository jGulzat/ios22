//
//  Goods.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 23/12/23.
//

import Foundation

struct Goods {
    var name: String
    var count: Int
    var image: String
    var detail: Detail
}

struct Detail {
    var price: Double
    var roomType: String
    var color: String
    var material: String
    var dimensions: String
    var weight: Float
}
