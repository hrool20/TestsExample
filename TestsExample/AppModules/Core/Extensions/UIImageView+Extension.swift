//
//  UIImageView+Extension.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import SDWebImage
import UIKit

extension UIImageView {
    func loadImage(
        url string: String?,
        placeholder: UIImage? = nil,
        _ onCompletion: ((UIImage?) -> Void)? = nil
    ) {
        guard let string = string else {
            onCompletion?(nil)
            return
        }
        sd_setImage(
            with: .init(string: string),
            placeholderImage: placeholder,
            options: [.continueInBackground, .highPriority]
        ) { image, error, _, _ in
            var image = image
            if error != nil {
                image = nil
            }
            onCompletion?(image)
        }
    }
}
