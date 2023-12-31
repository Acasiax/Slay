//
//  SnapCarousel.swift
//  YouTubeDetailView
//
//  Created by 이윤지 on 2023/07/03.
//


import SwiftUI

struct SnapCarousel<Content: View, T: Identifiable>: View {
    var content: (T) -> Content
    var list: [T]

    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 15, trailingSpace: CGFloat = 100, index: Binding<Int>, items: [T],@ViewBuilder content: @escaping (T)->Content) {
        self.content = content
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index

    }
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0

    var body: some View{

        GeometryReader{proxy in
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustMenWidth = (trailingSpace / 3) - spacing

            HStack(spacing: spacing){
                ForEach(list){item in

                    content(item)
                    //1.2 삭제
                        .frame(width: proxy.size.width - trailingSpace)
                        .offset(y: getOffset(item: item,width:
                                            width))

                }
            }
            //spacing will be horizontal padding
            .padding(.horizontal,spacing)
            .offset(x: (CGFloat(currentIndex) * -width) + (adjustMenWidth) + (currentIndex != 0 ? adjustMenWidth : 0) + offset)
            .gesture(

                DragGesture()
                    .updating($offset, body: { value, out, _ in
                         //조금 느리게 만들거임
                      //  out = value.translation.width (원본)
                        out = (value.translation.width / 1.5)
                    })
                    .onEnded({ value in
                        //current index 업데이팅
                        let offsetX = value.translation.width

                        let progress = -offsetX / width
                        let roundIndex = progress.rounded()
                        //7분32초까지 만듬
                        currentIndex += max(min(currentIndex + Int(roundIndex), list.count - 1), 0)

                        currentIndex = index
                    })
                    .onChanged({ value in

                        let offsetX = value.translation.width

                        let progress = -offset / width

                        let roundIndex = progress.rounded()

                        index = max(min(currentIndex + Int(roundIndex), list.count - 1),0)


                    })

            )
        }
        .animation(.easeInOut, value: offset == 0)
    }
    //moving view based on scroll offset...
    func getOffset(item: T,width: CGFloat)->CGFloat{
        let progress = ((offset < 0 ? offset : -offset) / width) * 60
        
        
        let topOffset = -progress < 60 ? progress : -(progress + 120)
        
        let previous = getIndex(item: item) - 1 == currentIndex ? (offset < 0 ? topOffset : -topOffset) : 0
        
       let next = getIndex(item: item) + 1 == currentIndex ? (offset < 0 ? -topOffset : topOffset) : 0
       let checkBetween = currentIndex >= 0 && currentIndex < list.count ? (getIndex(item: item) - 1 == currentIndex ? previous : next) : 0
        
        return getIndex(item: item) == currentIndex ? -60 - topOffset: checkBetween
    }

    
    func getIndex(item: T)->Int{
        let index = list.firstIndex{ currentItem in
            return currentItem.id == item.id
        } ?? 0
        
        return index
    }
}

struct SnapCarousel_Previews: PreviewProvider {
    static var previews: some View {
       YouTube(selectedBrand: .constant(nil), selectedYoutube: .constant(nil))
        // SnapCarousel()
        //ContentView()
    }
}
