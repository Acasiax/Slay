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
//백팩 나일론 화이트
    BagModel(image: "스몰 플랩 백", title: "스몰 플랩 백", price: "블랙", color: .pink),
BagModel(image: "이브닝 백", title: "이브닝 백", price: "핑크", color: .pink),
BagModel(image: "크럼플드 카프스킨, 골드 메탈", title: "크럼플드 카프스킨", price: "골드 메탈", color: .pink),
BagModel(image: "프린티드 카프스킨, 실버메탈", title: "프린티드 카프스킨", price: "실버메탈", color: .pink),
BagModel(image: "울 트위트 백팩 블랙", title: "울 트위트 백팩", price: "블랙", color: .pink),
BagModel(image: "스몰 백팩 유광 그레인드 카프스킨 코랄핑크 ", title: "스몰 백팩 유광 그레인드", price: "코랄핑크", color: .pink),
    BagModel(image: "백팩 나일론 화이트", title: "백팩 나일론", price: "화이트", color: .pink),
    BagModel(image: "백팩 카프스킨 오렌지", title: "백팩 카프스킨", price: "오렌지", color: .pink),
    BagModel(image: "박스 백 트위드 시퀸 블랙", title: "박스 백 트위드 시퀸", price: "블랙", color: .pink),
    BagModel(image: "스몰 박스 백 울트위트 푸시아블랙", title: "스몰 박스 백 울트위트", price: "푸시아,블랙", color: .pink),
    BagModel(image: "스몰 박스 백 페이턴트 카프스킨 레드", title: "스몰 박스 백 페이턴트 카프스킨", price: "레드", color: .pink),
    BagModel(image: "스몰 박스 백 페이턴트 카프스킨 블랙", title: "스몰 박스 백 페이턴트 카프스킨", price: "블랙", color: .pink),
    
    
]

var jewelrys = [

BagModel(image: "SOUS LE SIGNE DU LION 브로치", title: "호랑이 브로치", price: "18k", color: .blue),
BagModel(image: "PLUME 링", title: "PLUME 링", price: "18k", color: .pink),
BagModel(image: "ETERNAL N°5 링", title: "ETERNAL N°5 링", price: "18k", color: .pink),
BagModel(image: "jewelry4", title: "신라왕 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry5", title: "백제왕 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry6", title: "고구려 귀걸이", price: "$10만 원", color: .pink),
    
    
]

var scroll_Tabs = ["핸드백","쥬얼리","신발", "드레스", "화장품"]
