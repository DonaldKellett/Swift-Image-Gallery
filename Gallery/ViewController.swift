//
//  ViewController.swift
//  Gallery
//
//  Created by Donald Sebastian Leung on 2016/6/29.
//  Copyright © 2016年 Donald Sebastian Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scroll: Int = 0
    let images: [String] = ["black.png", "red.png", "yellow.png", "green.jpg", "white.jpg"]
    @IBOutlet var imgView: UIImageView!
    @IBAction func next(s: AnyObject) {
        scroll += 1
        imgView.image = UIImage(named: images[scroll % images.count])
        print(scroll)
    }
    @IBAction func previous(s: AnyObject) {
        scroll += images.count - 1
        imgView.image = UIImage(named: images[scroll % images.count])
        print(scroll)
    }
}