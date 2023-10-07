//
//  ModelData.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/22.
//

import SwiftUI

struct BagModel: Identifiable {
    var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
    var color : Color
}

var bags = [

    BagModel(image: "bag1", title: "짱구 백", price: "$10만 원", color: .pink),
BagModel(image: "bag2", title: "신형만 백", price: "$10만 원", color: .pink),
BagModel(image: "bag3", title: "부리부리몬 백", price: "$10만 원", color: .pink),
BagModel(image: "bag4", title: "짱아 백", price: "$10만 원", color: .pink),
BagModel(image: "bag5", title: "봉미선 백", price: "$10만 원", color: .pink),
BagModel(image: "bag6", title: "이슬이 백", price: "$10만 원", color: .pink),
    
    
]

var jewelrys = [

BagModel(image: "jewelry1", title: "호랑이 반지", price: "$10만 원", color: .blue),
BagModel(image: "jewelry2", title: "뱀 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry3", title: "실버 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry4", title: "신라왕 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry5", title: "백제왕 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry6", title: "고구려 귀걸이", price: "$10만 원", color: .pink),
    
    
]

var scroll_Tabs = ["핸드백","쥬얼리","신발", "드레스", "화장품"]
