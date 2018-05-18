//
//  APIModel.swift
//  RecruitmentApp
//
//  Created by Yuichiro Tsuji on 2018/05/18.
//  Copyright © 2018年 Yuichiro Tsuji. All rights reserved.
//

struct CompanyData: Codable {
//    let metaData: _metaData
    let data: [Data]
}

struct Data: Codable {
//    let id: Int?
    let title: String?
    let published_at: String?
    let support_count: Int?
    let page_view: Int?
    let candidate_count: Int?
    let location: String?
    let location_suffix: String?
    let description: String?
    let looking_for: String?
    let image: Image?
    let use_webview: Bool?
    let company: Company?
    let staffings_count: Int?
    let staffings: [Staffings]?
    let leader: Leader?
    let video_available: Bool?
    let category_images: [String]?
    let tags: [String]?
    let category_message: String
    let can_support: Bool?
    let supported: Bool?
    let can_bookmark: Bool?
    
//    private enum CodingKeys: String, CodingKey {
//        case id
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        id = String(try values.decode(Int.self, forKey: .id))
//    }
}

struct _metaData: Codable {
    let total_objects: Int
    let per_page: Int
    let total_pages: Int
}

struct Image: Codable {
    let i_320_131: String?
    let i_320_131x2: String?
    let max_1136: String?
    let i_105_130: String?
    let i_105_130x2: String?
    let i_255_70: String?
    let i_255_70x2: String?
    let i_50_50: String?
    let i_50_50x2: String?
    let i_304_124: String?
    let i_304_124x2: String?
    let caption: String?
    let original: String?
}

struct Company: Codable {
//    let id: Int?
    let name: String?
    let founder: String?
    let founded_at: String?
    let payroll_number: Int?
    let address_prefix: String?
    let address_suffix: String?
    let latitude: Float?
    let longitude: Float?
    let url: String?
    let font_color_code: String?
    let avatar: Avatar?
    let staffings_count: Int?
}

struct Avatar: Codable {
    let original: String?
    let s_20: String?
    let s_30: String?
    let s_40: String?
    let s_50: String?
    let s_60: String?
    let s_100: String?
    
}

struct Staffings: Codable {
    let user_id: String?
    let is_leader: Bool?
    let name: String?
    let facebook_uid: String?
    let description: String?
}

struct Leader: Codable {
    let name_ja: String?
    let name_en: String?
    let facebook_uid: String?
}

