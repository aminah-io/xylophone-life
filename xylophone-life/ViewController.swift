//
//  ViewController.swift
//  xylophone-life
//
//  Created by Aminah Jamil on 6/24/20.
//  Copyright © 2020 Aminah Jamil. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(note: sender.titleLabel?.text ?? "C")
    }
    

    
    func playSound(note: String) {
      let url = Bundle.main.url(forResource: note, withExtension: "wav")
      player = try! AVAudioPlayer(contentsOf: url!)
      player.play()
               
   }
    
}

