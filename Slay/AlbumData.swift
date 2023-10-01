//
//  AlbumData.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//

//import Foundation
//
//struct Album: Identifiable{
//    var id = UUID().uuidString
//    var albumImage : String
//    var albumShowTitle : String
//    var artistImage : String
//    var artistName : String
//    var badge : Bool
//    var year : String
//    var date : String
//    var songs : Int
//    var time : String
//    var copyright : String
//    var youtubeID: String
//    var youtubeURL: FashionShow
//
//}
//
//var albums: [Album] = [
//    Album( albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListGucci[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[0].fashionShows[0].youtubeID, youtubeURL: fashionShowListGucci[0]),
//
//    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListGucci[1].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: fashionShowListGucci[1]),
//
//
//Album(albumImage: "samplemonvie1", albumShowTitle: fashionShowListGucci[1].showTitle, artistImage: "samplemonvie1", artistName: " 마르켈리아", badge: true, year: "2020 ", date: " 0310", songs: 1, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: fashionShowListGucci[0])
//
//]

import Foundation

struct Album: Identifiable{
    var id = UUID().uuidString
    var albumImage : String
    var albumShowTitle : String
    var artistImage : String
    var artistName : String
    var badge : Bool
    var year : String
    var date : String
    var songs : Int
    var time : String
    var copyright : String
    var youtubeID: String
    var youtubeURL: String
    //var 패션쇼 설명 이것도 배열에 연결해서 가져오는게 나을 듯
    var showDetail: String

}

var albums: [Album] = [
    Album( albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListGucci[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[0].fashionShows[0].youtubeID, youtubeURL: "https://www.youtube.com/live/rIUdA21wEPc?feature=share", showDetail: brands[1].fashionShows[0].showDetail),

    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListGucci[1].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/lkvsiTD3bF4?feature=share", showDetail: brands[1].fashionShows[1].showDetail),


    Album(albumImage: "samplemonvie1", albumShowTitle: fashionShowListGucci[1].showTitle, artistImage: "samplemonvie1", artistName: " 마르켈리아", badge: true, year: "2020 ", date: " 0310", songs: 1, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/Wr4w5i1xFEo?feature=share", showDetail: "")

]


var albums2: [Album] = [
    Album( albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListChannel[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[0].fashionShows[0].youtubeID, youtubeURL: "https://www.youtube.com/live/Wr4w5i1xFEo?feature=share", showDetail: brands[0].fashionShows[0].showDetail),

    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListGucci[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/rIUdA21wEPc?feature=share", showDetail: brands[1].fashionShows[0].showDetail),

//samplemonvie1
    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListYSL[0].showTitle, artistImage: "버버리-리카르도티시", artistName: " 마르켈리아", badge: true, year: "2020 ", date: " 0310", songs: 1, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/I2uIi0GT8Qg?feature=share", showDetail: brands[2].fashionShows[0].showDetail),
    
    
    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListDior[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/ZnS1UMJayoI?feature=share", showDetail: brands[3].fashionShows[0].showDetail),
    
    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListPRADA[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/BGWhB8dOKhc?feature=share", showDetail: brands[4].fashionShows[0].showDetail),
    
    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListBURBERRY[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/jvR4lRIBZtA?feature=share", showDetail: brands[5].fashionShows[0].showDetail),
    

]

var albums3: [Album] = [
    Album( albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListChannel[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[0].fashionShows[0].youtubeID, youtubeURL: "https://www.youtube.com/live/Wr4w5i1xFEo?feature=share", showDetail: brands[0].fashionShows[0].showDetail),

    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListGucci[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/rIUdA21wEPc?feature=share", showDetail: brands[1].fashionShows[0].showDetail),

//samplemonvie1
    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListYSL[0].showTitle, artistImage: "버버리-리카르도티시", artistName: " 마르켈리아", badge: true, year: "2020 ", date: " 0310", songs: 1, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/I2uIi0GT8Qg?feature=share", showDetail: brands[2].fashionShows[0].showDetail),
    
    
    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListDior[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/ZnS1UMJayoI?feature=share", showDetail: brands[3].fashionShows[0].showDetail),
    
    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListPRADA[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/BGWhB8dOKhc?feature=share", showDetail: brands[4].fashionShows[0].showDetail),
    
    Album(albumImage: "i like to ride my bicycle", albumShowTitle: fashionShowListBURBERRY[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/jvR4lRIBZtA?feature=share", showDetail: brands[5].fashionShows[0].showDetail),
    

]