//
//  UIColor+Extension.swift
//  MarkkAssignment_PrachiGade
//
//  Created by Prachi Gade on 31/10/20.
//

import UIKit

extension UIColor {
    convenience init(r: Float, g: Float, b: Float, a: CGFloat = 1 ) {
        self.init(red: CGFloat(r/255), green: CGFloat(g/255), blue: CGFloat(b/255), alpha: a)
    }
}

extension UIColor {
    func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
}


class CustomColor {
    class func backgroundGray() -> UIColor {
        return UIColor.init(r: 230, g: 230, b: 230)
    }
}
