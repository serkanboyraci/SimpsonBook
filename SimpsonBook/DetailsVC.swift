//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Ali serkan Boyracı  on 21.09.2022.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    var selectedSimpson : family? //with class defining here is very important
    /*
    var selectedName = ""
    var selectedJob = ""
    var selectedImage = UIImage()
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
        
        /*
        nameLabel.text = selectedName
        jobLabel.text = selectedJob
        imageView.image = selectedImage
        */

        // Do any additional setup after loading the view.
    }


}
