//
//  BooksForVolumeView.swift
//  Scriptures Mapped
//
//  Created by Matthew Porter on 11/29/21.
//

import SwiftUI

struct BooksForVolumeView: View {
    var volumeId: Int
    var volumeName: String
    
    var body: some View {
        List {
            ForEach(GeoDatabase.shared.booksForParentId(volumeId)) { book in
                NavigationLink(book.fullName) {
                    if let numChapters = book.numChapters, numChapters > 1 {
                        ChapterGridView(book: book)

                    }
                    else {
                        ChapterContentView(book: book, chapter: book.numChapters == nil ? 0 : 1 )
                    }
                }
                .isDetailLink(false)
            }
        }
        .listStyle(.plain)
        .navigationBarTitle(volumeName)
    }
}

struct BooksForVolumeView_Previews: PreviewProvider {
    static var previews: some View {
        BooksForVolumeView(volumeId: 1, volumeName: "Old Testament")
    }
}
