//
//  page3ViewController.swift
//  musicApp
//
//  Created by krishna on 13/11/22.
//

import UIKit
import AVFoundation

class page3ViewController: UIViewController {
    
    var play: AVAudioPlayer!

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
       
    }
    @IBAction func button4(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "page4ViewController")
        self.present(vc, animated: true)
        vc.modalPresentationStyle = .overFullScreen
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
    }
}
