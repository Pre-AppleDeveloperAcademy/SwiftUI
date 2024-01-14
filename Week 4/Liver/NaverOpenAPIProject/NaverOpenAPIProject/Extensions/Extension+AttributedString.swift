//
//  Extension+AttributedString.swift
//  NaverOpenAPIProject
//
//  Created by Kyungsoo Lee on 1/8/24.
//

import Foundation

extension AttributedString {
    init?(htmlString: String) {
        let option: [NSAttributedString.DocumentReadingOptionKey: NSAttributedString.DocumentType] = [.documentType: .html]
        guard let htmlData = htmlString.data(using: .utf16),
              let nsStr = try? NSAttributedString(data: htmlData, options: option, documentAttributes: nil)
        else { return nil }
        self.init(nsStr.string)
    }
}
