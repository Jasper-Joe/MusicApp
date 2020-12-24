//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        let resource:String = sender.currentTitle!
        let ext:String = "wav"
        playSound(resource:resource, ext:ext)
    }
    
    func playSound(resource:String, ext:String) {
        let url = Bundle.main.url(forResource: resource, withExtension: ext)
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

