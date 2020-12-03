//
//  ViewController.swift
//  What2Eat
//
//  Created by Richard Middleton on 03/12/2020.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var toggle: UIImageView!
    
    
    let arr = [#imageLiteral(resourceName: "food-vector-free-icon-set-32"),#imageLiteral(resourceName: "food-vector-free-icon-set-25"),#imageLiteral(resourceName: "food-vector-free-icon-set-31"),#imageLiteral(resourceName: "food-vector-free-icon-set-33"),#imageLiteral(resourceName: "food-vector-free-icon-set-21"),#imageLiteral(resourceName: "food-vector-free-icon-set-39"),#imageLiteral(resourceName: "food-vector-free-icon-set-37"),#imageLiteral(resourceName: "food-vector-free-icon-set-27"),#imageLiteral(resourceName: "food-vector-free-icon-set-40"),#imageLiteral(resourceName: "food-vector-free-icon-set-22"),#imageLiteral(resourceName: "food-vector-free-icon-set-22")]
    let vegArr = [#imageLiteral(resourceName: "food-vector-free-icon-set-32"),#imageLiteral(resourceName: "food-vector-free-icon-set-25"),#imageLiteral(resourceName: "food-vector-free-icon-set-31"),#imageLiteral(resourceName: "food-vector-free-icon-set-29"),#imageLiteral(resourceName: "food-vector-free-icon-set-23"),#imageLiteral(resourceName: "food-vector-free-icon-set-39"),#imageLiteral(resourceName: "food-vector-free-icon-set-37"),#imageLiteral(resourceName: "food-vector-free-icon-set-35"),#imageLiteral(resourceName: "food-vector-free-icon-set-40"),#imageLiteral(resourceName: "food-vector-free-icon-set-22")]
    
    
    var veg = false
    
    func toggler() {
        veg = !veg
        veg ? (toggle.image = #imageLiteral(resourceName: "on")) : (toggle.image = #imageLiteral(resourceName: "off"))
    }
    
    @IBAction func Button(_ sender: UIButton) {
        if(veg) {
            foodImage.image = vegArr.randomElement()
        }
        else {
            foodImage.image = arr.randomElement()
        }
    }
    
    
    @IBAction func vegBtn(_ sender: UIButton) {
        toggler()
    }
    
}

