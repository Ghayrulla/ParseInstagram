//
//  Post.swift
//  ParseInstagram
//
//  Created by Gary Ghayrat on 3/14/16.
//  Copyright © 2016 Gary Ghayrat. All rights reserved.
//
/*
//import Foundation
import UIKit
import Parse
class Post: NSObject {
    var caption: String?

    /**
     * Other methods
     */
     
     /**
     Method to add a user post to Parse (uploading image file)
     
     - parameter image: Image that the user wants upload to parse
     - parameter caption: Caption text input by the user
     - parameter completion: Block to be executed after save operation is complete
     */
    
/*    class func postsFromObjects(array: [PFObject])->[Post]{
        var posts = [Post]() //initialize the array
        for obj in array{
            let post = Post(object: obj)
            posts.append(post)
        }
        return posts
    }
*/    
    class func postUserImage(image: UIImage?, withCaption caption: String?, withCompletion completion: PFBooleanResultBlock?) {
        // Create Parse object PFObject
        let post = PFObject(className: "Post")
        
        // Add relevant fields to the object
        post["media"] = getPFFileFromImage(image) // PFFile column type
        post["caption"] = caption

        
        // Save object (following function will save the object in Parse asynchronously)
        post.saveInBackgroundWithBlock(completion)
    }
    
    /**
     Method to convert UIImage to PFFile
     
     - parameter image: Image that the user wants to upload to parse
     
     - returns: PFFile for the the data in the image
     */
    class func getPFFileFromImage(image: UIImage?) -> PFFile? {
        // check if image is not nil
        if let image = image {
            // get image data and check if that is not nil
            if let imageData = UIImagePNGRepresentation(image) {
                return PFFile(name: "image.png", data: imageData)
            }
        }
        return nil
    }
}
*/