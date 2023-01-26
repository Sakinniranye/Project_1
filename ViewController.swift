//
//  ViewController.swift
//  Project 1
//
//  Created by Samuel Akinniranye on 1/24/23.
//

import UIKit

class ViewController: UIViewController {
    
let myBackstory = page(text: "My name is Samuel Akinniranye. I was born in Nigeria, but I have been living in Indianapolis for over 10 years now. I am currently a Sophomore at Purdue University with a Computer Science degree.", image: UIImage(named: "image2.jpg")!)
    let myWeakness = page(text: "My left hand is terrible when I hoop. My left leg is terrible when I play soccer", image: UIImage(named: "DSC_3837.jpg")!)
    let myMax = page(text: "I have been very inconsistent with the gym since I got to college, but I will list my stats from 2 years ago. Squat: 405 | Bench: 275 | Clean: 235", image: UIImage(named: "image3.JPG")!)
    var pages: [page] = []
    
    var choose = 0;

    @IBOutlet weak var Picture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pages = [myBackstory, myWeakness, myMax]
        Picture.layer.masksToBounds = true
        Picture.layer.cornerRadius = Picture.frame.height / 2

        //        self.navigationItem.leftBarButtonItems = [UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(self.backAction))]
        // Do an y additional setup after loading the view.
//    }
//    @IBAction func backstory(_ sender: UITapGestureRecognizer) {
//        if let tappedView = sender.view {
//            performSegue(withIdentifier: "change", sender: tappedView)
//        }
    }
    
    @IBAction func one(sender: UIButton) {
        choose = 100
        performSegue(withIdentifier: "change", sender: one)
    }

    @IBAction func two(sender: UIButton) {
        choose = 200
        performSegue(withIdentifier: "change", sender: two)
    }

    @IBAction func three(sender: UIButton) {
        choose = 300
        performSegue(withIdentifier: "change", sender: three)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "change",
            let SecondaryViewController = segue.destination as? SecondaryViewController {

            if choose == 100 {
                SecondaryViewController.select = pages[0]
            } else if choose == 200 {
                SecondaryViewController.select = pages[1]
            } else if choose == 300 {
                SecondaryViewController.select = pages[2]
            }
        }
    }
}

