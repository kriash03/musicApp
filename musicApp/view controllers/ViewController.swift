//
//  ViewController.swift
//  musicApp
//
//  Created by krishna on 09/11/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIScrollViewDelegate {

    var play: AVAudioPlayer!
    
    
    @IBOutlet weak var cymbol: UIButton!
    @IBOutlet weak var clap: UIButton!
    @IBOutlet weak var snare: UIButton!
    @IBOutlet weak var kick: UIButton!
    
    let scrollViewer = UIScrollView()
    var pageControl: UIPageControl {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        return pageControl
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pageControl)
        view.addSubview(scrollViewer)
        
        

        cymbol.layer.cornerRadius = 9.0
        cymbol.layer.masksToBounds = true
        cymbol.layer.borderWidth = 1.5
        cymbol.layer.borderColor = CGColor(red: 54, green: 54, blue: 89, alpha: 0.28)
        clap.layer.cornerRadius = 9.0
        clap.layer.masksToBounds = true
        clap.layer.borderWidth = 1.5
        clap.layer.borderColor = CGColor(red: 54, green: 54, blue: 89, alpha: 0.28)
        snare.layer.cornerRadius = 9.0
        snare.layer.masksToBounds = true
        snare.layer.borderWidth = 1.5
        snare.layer.borderColor = CGColor(red: 54, green: 54, blue: 89, alpha: 0.28)
        kick.layer.cornerRadius = 9.0
        kick.layer.masksToBounds = true
        kick.layer.borderWidth = 1.5
        kick.layer.borderColor = CGColor(red: 54, green: 54, blue: 89, alpha: 0.28)
        
    }
    
    @IBAction func button1Tapped(_ sender: Any) {
    }
    @IBAction func button2Tapped(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "page2ViewController")
        self.present(vc, animated: true)
        vc.modalPresentationStyle = .fullScreen
    }
    @IBAction func button3Tapped(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "page3ViewController")
        self.present(vc, animated: true)
        vc.modalPresentationStyle = .fullScreen
    }
    @IBAction func button4Tapped(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "page4ViewController")
        self.present(vc, animated: true)
        vc.modalPresentationStyle = .fullScreen
    }
    
    
    
    @IBAction func tuneTapped(_ sender: UIButton) {
        
        
        
        let tune = sender.tag
        switch tune {
        case 1:
            if let soundURL = Bundle.main.url(forResource: "Clap", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 2:
            if let soundURL = Bundle.main.url(forResource: "Cymbol", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 3:
            if let soundURL = Bundle.main.url(forResource: "Snare", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 4:
            if let soundURL = Bundle.main.url(forResource: "Beat Only Kick Beat_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 5:
            if let soundURL = Bundle.main.url(forResource: "Melody String Melody 1_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 6:
            if let soundURL = Bundle.main.url(forResource: "Melody String Melody 2_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 7:
            if let soundURL = Bundle.main.url(forResource: "Melody Synth Melody 1_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 8:
            if let soundURL = Bundle.main.url(forResource: "Melody Synth Melody 2_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 9:
            if let soundURL = Bundle.main.url(forResource: "Harmony Piano Major 1 Harmony_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 10:
            if let soundURL = Bundle.main.url(forResource: "Harmony Piano Major 2 Harmony_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 11:
            if let soundURL = Bundle.main.url(forResource: "Harmony Piano Major 3 Harmony_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 12:
            if let soundURL = Bundle.main.url(forResource: "Harmony Piano Minor 1 Harmony_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 13:
            if let soundURL = Bundle.main.url(forResource: "Beat Dance Off Beat_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 14:
            if let soundURL = Bundle.main.url(forResource: "Beat Full Beat_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 15:
            if let soundURL = Bundle.main.url(forResource: "FX Backwards Piano FX_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
        case 16:
            if let soundURL = Bundle.main.url(forResource: "FX Kick Builds FX_1", withExtension: "wav") {
            do {
            play = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
            print(error)
            }
            play.play()
            }else{
            print("Unable to locate audio file")
            }
            
            
        default:
            return
        }
        
        
        
        
        
        
        
        
//        let tune = sender.tag
//        if play != nil {
//                    play.stop()
//                    play = nil
//                } else {
//                    playSound()
//                }
//            }
//    func playSound() {
//
//        let url = Bundle.main.url(forResource: "Clap", withExtension: "mp3")
//        play = try! AVAudioPlayer(contentsOf: url!)
//        play.play()
//        }
//
                                                    //--diff--
//        let tune = sender.tag
//
//        switch tune {
//        case 1:
//            let pathToSound = Bundle.main.path(forResource: "Cymbol", ofType: "wav")!
//            let url = URL(fileURLWithPath: pathToSound)
//
//            do{
//                play = try AVAudioPlayer(contentsOf: url)
//                play?.play()
//            } catch {
//
//            }
//        case 2:
//            let pathToSound = Bundle.main.path(forResource: "FX Kick Builds FX_1", ofType: "wav")!
//            let url = URL(fileURLWithPath: pathToSound)
//
//            do{
//                play = try AVAudioPlayer(contentsOf: url)
//                play?.play()
//            } catch {
//
//            }
//        case 3:
//            let pathToSound = Bundle.main.path(forResource: "Snare", ofType: "wav")!
//            let url = URL(fileURLWithPath: pathToSound)
//
//            do{
//                play = try AVAudioPlayer(contentsOf: url)
//                play?.play()
//            } catch {
//
//            }
//        case 4:
//            let pathToSound = Bundle.main.path(forResource: "Clap", ofType: "wav")!
//            let url = URL(fileURLWithPath: pathToSound)
//
//            do{
//                play = try AVAudioPlayer(contentsOf: url)
//                play?.play()
//            } catch {
//
//            }
//        default:
//            return
//        }
        
    //}
    
}

}
