//
//  ViewController.swift
//  Xylophone
//
//  Created by Sergio Rosa on 11/1/2018.
//  Copyright © 2018 Sergio App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        print(sender.tag)
        if sender.tag == 1 {
            print("play middle C")
        }
        else if sender.tag == 2 {
            print("play D")
        }
    }
    
}

