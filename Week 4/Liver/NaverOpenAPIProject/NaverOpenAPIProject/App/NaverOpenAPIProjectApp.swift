//
//  NaverOpenAPIProjectApp.swift
//  NaverOpenAPIProject
//
//  Created by Kyungsoo Lee on 1/8/24.
//

import SwiftUI

@main
struct NaverOpenAPIProjectApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: ImageFinder())
        }
    }
}
