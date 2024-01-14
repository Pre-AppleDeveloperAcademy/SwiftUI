//
//  ImageBox.swift
//  NaverOpenAPIProject
//
//  Created by Kyungsoo Lee on 1/8/24.
//

import Foundation

struct ImageBox {
    var searchKeyword = ""
    var images: [ImageInfo] = []
    
    struct ImageInfo: Codable, Identifiable {
        let id: Int
        let attributedTitle: AttributedString?
        let link: String
        let thumbnail: String
        let sizeheight: String
        let sizewidth: String
        
        init(_ imageInfo: ImageFinder.Response.ImageInfo, id: Int) {
            attributedTitle = AttributedString(htmlString: imageInfo.title)
            link = imageInfo.link
            thumbnail = imageInfo.thumbnail
            sizeheight = imageInfo.sizeheight
            sizewidth = imageInfo.sizewidth
            self.id = id
            print(self)
        }
    }
}
