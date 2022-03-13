//
//  PhotoViewController.swift
//  CollectionView Photos
//
//  Created by Tony on 13.03.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    @IBAction func ShareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController (activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Done")
            } else{
                print ("Error")
            }
            
        }
        
        present(shareController, animated: true, completion: nil)
    }
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
    }
    

   

}
