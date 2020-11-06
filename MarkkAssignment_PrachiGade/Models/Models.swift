//
//  Models.swift
//  MarkkAssignment_PrachiGade
//
//  Created by Prachi Gade on 02/11/20.
//

import UIKit
import Photos

struct UploadPhotosResponse {
    let photos: Image
    
    var asJson: [String: Any] {
        get {
            return ["photos": photos]
        }
    }
}

struct Image {
    let image: UIImage?
    var isUploaded: Bool?
    
    var asJson: [String:Any] {
        get {
            return [ "image": image as Any,
                     "isUploaded": isUploaded ?? false,
                    ]
        }
    }
}

struct UploadPhotosRequest {
    let image: UIImage
    var asJson: [String: UIImage] {
        get {
            return ["image": image]
        }
    }
}
