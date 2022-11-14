//
//  page4ViewController.swift
//  musicApp
//
//  Created by krishna on 13/11/22.
//

import UIKit
import AVFoundation

class page4ViewController: UIViewController {
    
    var play: AVAudioPlayer!
    var time: Timer!
    var isPlaying = false {
        didSet {
          setButtonState()
          playPauseAudio()
        }
      }
    
    func setButtonState() {
       if isPlaying {
         playButton.setTitle("Pause", for: .normal)
       } else {
         playButton.setTitle("Play", for: .normal)
       }
     }
     
     func playPauseAudio() {
       guard let play = play
         else {
         return
       }
         if isPlaying {
               play.play()
             } else {
               play.pause()
             }
     }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        isPlaying = !isPlaying
    }
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var cymbol: UIButton!
    @IBOutlet weak var clap: UIButton!
    @IBOutlet weak var snare: UIButton!
    @IBOutlet weak var kick: UIButton!
    
    @IBOutlet weak var strings1: UIButton!
    @IBOutlet weak var strings2: UIButton!
    @IBOutlet weak var synth1: UIButton!
    @IBOutlet weak var synth2: UIButton!
    
    @IBOutlet weak var piano1: UIButton!
    @IBOutlet weak var piano2: UIButton!
    @IBOutlet weak var piano3: UIButton!
    @IBOutlet weak var piano4: UIButton!
    
    @IBOutlet weak var tune1: UIButton!
    @IBOutlet weak var tune3: UIButton!
    @IBOutlet weak var tune2: UIButton!
    @IBOutlet weak var tune4: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func button1(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "ViewController")
        self.present(vc, animated: true)
        vc.modalPresentationStyle = .overFullScreen
    }
    @IBAction func button2(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "page2ViewController")
        self.present(vc, animated: true)
        vc.modalPresentationStyle = .overFullScreen
    }
    @IBAction func button3(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "page3ViewController")
        self.present(vc, animated: true)
        vc.modalPresentationStyle = .overFullScreen
    }
    @IBAction func button4(_ sender: Any) {
    }
    
    
    @IBAction func clapTapped(_ sender: Any) {
        let path = Bundle.main.path(forResource: "Clap", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
            clap.isEnabled = false
            cymbol.isEnabled = true
            snare.isEnabled = true
            kick.isEnabled = true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    
    @IBAction func cymbol(_ sender: Any) {
        let path = Bundle.main.path(forResource: "Cymbol", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        clap.isEnabled = true
        cymbol.isEnabled = false
        snare.isEnabled = true
        kick.isEnabled = true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func snareTapped(_ sender: Any) {
        let path = Bundle.main.path(forResource: "Snare", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        clap.isEnabled = true
        cymbol.isEnabled = true
        snare.isEnabled = false
        kick.isEnabled = true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func bassTapped(_ sender: Any) {
        let path = Bundle.main.path(forResource: "Beat Only Kick Beat_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        clap.isEnabled = true
        cymbol.isEnabled = true
        snare.isEnabled = true
        kick.isEnabled = false
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    
    @IBAction func strings1Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Melody String Melody 1_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        strings1.isEnabled=false
        strings2.isEnabled=true
        synth1.isEnabled=true
        synth2.isEnabled=true

        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func strings2Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Melody String Melody 2_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        strings1.isEnabled=true
        strings2.isEnabled=false
        synth1.isEnabled=true
        synth2.isEnabled=true

        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func synth1Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Melody Synth Melody 1_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        strings1.isEnabled=true
        strings2.isEnabled=true
        synth1.isEnabled=false
        synth2.isEnabled=true

        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func synth2Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Melody Synth Melody 2_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        strings1.isEnabled=true
        strings2.isEnabled=true
        synth1.isEnabled=true
        synth2.isEnabled=false

        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func piano1Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Harmony Piano Major 1 Harmony_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        piano1.isEnabled=false
        piano2.isEnabled=true
        piano3.isEnabled=true
        piano4.isEnabled=true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func piano2Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Harmony Piano Major 2 Harmony_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        piano1.isEnabled=true
        piano2.isEnabled=false
        piano3.isEnabled=true
        piano4.isEnabled=true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func piano3Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Harmony Piano Major 3 Harmony_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        piano1.isEnabled=true
        piano2.isEnabled=true
        piano3.isEnabled=false
        piano4.isEnabled=true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func piano4Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Harmony Piano Minor 1 Harmony_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        piano1.isEnabled=true
        piano2.isEnabled=true
        piano3.isEnabled=true
        piano4.isEnabled=false
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func tune1Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "FX Kick Builds FX_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        tune1.isEnabled=false
        tune2.isEnabled=true
        tune3.isEnabled=true
        tune4.isEnabled=true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func tune2Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "FX Backwards Piano FX_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        tune1.isEnabled=true
        tune2.isEnabled=false
        tune3.isEnabled=true
        tune4.isEnabled=true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func tune3Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Beat Full Beat_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        tune1.isEnabled=true
        tune2.isEnabled=true
        tune3.isEnabled=false
        tune4.isEnabled=true
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    @IBAction func tune4Tapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "Beat Dance Off Beat_1", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        tune1.isEnabled=true
        tune2.isEnabled=true
        tune3.isEnabled=true
        tune4.isEnabled=false
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play?.play()
        } catch {
            print("unable to locate file")
        }
    }
    
//    @IBAction func tuneTapped(_ sender: UIButton) {
//        let tune = sender.tag
//        switch tune {
//        case 1:
//            if let soundURL = Bundle.main.url(forResource: "Clap", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 2:
//            if let soundURL = Bundle.main.url(forResource: "Cymbol", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 3:
//            if let soundURL = Bundle.main.url(forResource: "Snare", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 4:
//            if let soundURL = Bundle.main.url(forResource: "Beat Only Kick Beat_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 5:
//            if let soundURL = Bundle.main.url(forResource: "Melody String Melody 1_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 6:
//            if let soundURL = Bundle.main.url(forResource: "Melody String Melody 2_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 7:
//            if let soundURL = Bundle.main.url(forResource: "Melody Synth Melody 1_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 8:
//            if let soundURL = Bundle.main.url(forResource: "Melody Synth Melody 2_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 9:
//            if let soundURL = Bundle.main.url(forResource: "Harmony Piano Major 1 Harmony_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 10:
//            if let soundURL = Bundle.main.url(forResource: "Harmony Piano Major 2 Harmony_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 11:
//            if let soundURL = Bundle.main.url(forResource: "Harmony Piano Major 3 Harmony_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 12:
//            if let soundURL = Bundle.main.url(forResource: "Harmony Piano Minor 1 Harmony_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 13:
//            if let soundURL = Bundle.main.url(forResource: "Beat Dance Off Beat_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 14:
//            if let soundURL = Bundle.main.url(forResource: "Beat Full Beat_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 15:
//            if let soundURL = Bundle.main.url(forResource: "FX Backwards Piano FX_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//        case 16:
//            if let soundURL = Bundle.main.url(forResource: "FX Kick Builds FX_1", withExtension: "wav") {
//            do {
//            play = try AVAudioPlayer(contentsOf: soundURL)
//            }
//            catch {
//            print(error)
//            }
//            play.play()
//            }else{
//            print("Unable to locate audio file")
//            }
//
//
//        default:
//            return
//        }
//    }
//
//
//
//
    
}
