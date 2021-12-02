//
//  ChaptereGridView.swift
//  Scriptures Mapped
//
//  Created by Matthew Porter on 12/1/21.
//

import SwiftUI

struct ChapterGridView: View {
    var book: Book
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 6),
                      spacing: 8) {
                ForEach(1...(book.numChapters ?? 0), id: \.self) { chapter in
                    NavigationLink("\(chapter)") {
                        ChapterContentView(book: book, chapter: chapter)
                    }
                    .isDetailLink(false)
                    
                    
                }
            }
        }
    }
}

//struct ChaptereGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChaptereGridView(book: )
//    }
//}
