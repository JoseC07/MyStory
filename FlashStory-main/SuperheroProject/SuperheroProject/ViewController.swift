//
//  ViewController.swift
//  SuperheroProject
//
//  Created by Alex Lecusay on 1/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainHeroImg: UIImageView!
    
    let backstory = Hero(
        detailImage: UIImage(named: "FlashBackstory")!,
        detailString: "Flash, or better known as Barry Allen who gains super-human speed after the explosion of the S.T.A.R. Labs' particle accelerator which he uses to fight crime and hunt other metahumans in Central City as the Flash, a masked superhero.")
    let weakness = Hero(
        detailImage: UIImage(named: "FlashWeakness")!,
        detailString: "The Flash's weaknesses have been identified as, extreme low climates. This is the only way to slow down the Flash, is to cool him down till he freezes.")
    let strength = Hero(
        detailImage: UIImage(named: "FlashStrength")!,
        detailString: "In a comic of the Flash we can see how strong he really is, when he had the ability to trade off the speed he usually runs at. For inmense strength that could possibly not be matches by anyone but Superman.")
    
    @IBOutlet weak var heroImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeImgCirlce()
    }
    
    func makeImgCirlce() {
        mainHeroImg.layer.cornerRadius = mainHeroImg.frame.size.height/2.0
        mainHeroImg.clipsToBounds = true
    }
    
    @IBAction func didTapDetail(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.hero = backstory
            } else if tappedView.tag == 1 {
                detailViewController.hero = weakness
            } else if tappedView.tag == 2 {
                detailViewController.hero = strength
            } else {
                print("No detail was tapped, please check your selection.")
            }
        }
    }
}

