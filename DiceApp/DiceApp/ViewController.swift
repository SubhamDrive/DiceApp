//
//  ViewController.swift
//  DiceApp
//
//  Created by Shivam Maheshwari on 19/07/20.
//  Copyright © 2020 Subham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UiLableOne: UIImageView!
    @IBOutlet weak var UiLableTwo: UIImageView!
    
    var randomImage1 : Int = 0
    var randomImage2 : Int = 0
    var imgContainer = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickPressButton(_ sender: UIButton) {
       randomImage1 = Int(arc4random_uniform(6))
       randomImage2 = Int(arc4random_uniform(6))
        
        UiLableOne.image = UIImage(named:imgContainer[randomImage1])
        UiLableTwo.image = UIImage(named:imgContainer[randomImage2])
    }
}

