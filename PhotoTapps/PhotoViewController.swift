//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Pavel Paddubotski on 5.08.21.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, error in
            print(bool)
        }
        self.present(shareController, animated: true, completion: nil)
    }
    
}
