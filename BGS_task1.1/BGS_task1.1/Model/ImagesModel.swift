//
//  ImagesModel.swift
//  BGS_task1.1
//
//  Created by Oleg Kalistratov on 25.05.22.
//

import Foundation

var Images = [String:ImagesModel]()

struct ImagesModel: Codable {
    let photoURL: String
    let userName: String
    let userURL: String
    let colors: [String]
    
    enum CodingKeys: String, CodingKey {
        case photoURL = "photo_url"
        case userName = "user_name"
        case userURL = "user_url"
        case colors
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.photoURL = try values.decode(String.self, forKey: .photoURL)
        self.userName = try values.decode(String.self, forKey: .userName)
        self.userURL = try values.decode(String.self, forKey: .userURL)
        self.colors = try values.decode([String].self, forKey: .colors)
        
    }
}
