//
//  MascotViewController.swift
//  Three Amigos
//
//  Created by Julien Tougas on 2016-09-21.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

import UIKit

class MascotViewController: UIViewController {

    @IBOutlet weak var mascotImage: UIImageView!
    @IBOutlet weak var mascotName: UILabel!
    
    
    var names: [String] = ["Android", "Duke", "Tux"]
    
    var images: [UIImage] = [
        UIImage(named:"android.png")!,
        UIImage(named:"duke.png")!,
        UIImage(named:"tux.png")!,
    ]
    
    var index: Int = 0;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mascotImage.image = images[index]
        mascotName.text = names[index]
    }

    @IBAction func handleNext(_ sender: AnyObject) {
        index = index + 1
        if (index >= names.count){
            index = 0
        }
        mascotImage.image = images[index]
        mascotName.text = names[index]
    }
    @IBAction func handlePrevious(_ sender: AnyObject) {
        index = index - 1
        if (index < 0){
            index = names.count - 1
        }
        mascotImage.image = images[index]
        mascotName.text = names[index]
    }
}
