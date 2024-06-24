//
//  MovieTitle.swift
//  testNoStoryBoard
//
//  Created by Dias Shabarov on 06.05.2024.
//

import Foundation
import UIKit

struct MovieTitle {
    var title: String
    var movieImage: UIImage?
    
    init(title: String, movieImage: UIImage?) {
        self.title = title
        self.movieImage = movieImage
    }
}
