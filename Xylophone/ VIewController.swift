//
//  ViewController.swift
//  Xylophone
//
//  Created by Sergio Rosa on 11/1/2018.
//  Copyright © 2018 Sergio App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate {
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2","note3","note4","note5","note6","note7"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        var selectedSoundFileName : String = soundArray[sender.tag]
        print(selectedSoundFileName)
        
        playSound()
    }
    
    func playSound(){
        let sounfURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:sounfURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
    
}
