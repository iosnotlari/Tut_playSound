//
//  ViewController.swift
//  Tut_playSound
//
//  Created by ruroot on 9/20/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let chosenSound = sender.tag
        playSound(soundIndex: chosenSound)
    }
    
}


extension ViewController: AVAudioPlayerDelegate {
    func playSound(soundIndex: Int){
        let soundURL = Bundle.main.url(forResource: "beep\(soundIndex)", withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)}
        catch{
            print(error)
        }
        audioPlayer.play()
    }
}
