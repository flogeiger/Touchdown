//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Florian Geiger on 04.03.25.
//

import Foundation

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
