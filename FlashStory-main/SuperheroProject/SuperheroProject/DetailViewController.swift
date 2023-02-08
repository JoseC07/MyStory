//
//  DetailViewController.swift
//  SuperheroProject
//
//  Created by Alex Lecusay on 1/19/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var hero: Hero?
    
    @IBOutlet weak var detailHeroImage: UIImageView!
    @IBOutlet weak var detailHeroString: UITextView!
    @IBOutlet weak var detailHeroStringHC: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        detailHeroImage.image = hero?.detailImage
        detailHeroString.text = hero?.detailString
    }
}
