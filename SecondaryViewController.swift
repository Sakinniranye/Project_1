//
//  SecondaryViewController.swift
//  Project 1
//
//  Created by Samuel Akinniranye on 1/25/23.
//

import UIKit

class SecondaryViewController: UIViewController {

    var select: page?
    
    @IBOutlet var First: UIImageView!
    
    @IBOutlet var Second: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        if let select = select {
            Second.text = select.text
            First.image = select.image
        }
        
        // Do any additional setup after loading the view.
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
