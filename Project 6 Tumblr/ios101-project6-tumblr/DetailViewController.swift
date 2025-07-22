//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Nora Fotoohi on 7/21/25.
//

import UIKit
import NukeExtensions

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = post.caption.trimHTMLTags()

        if let imagePath = post.photos.first{
            let imageURL = imagePath.originalSize.url
            NukeExtensions.loadImage(with: imageURL, into: imageView)
        }
            
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
