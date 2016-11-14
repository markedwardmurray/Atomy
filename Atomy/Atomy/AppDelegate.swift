//
//  AppDelegate.swift
//  Atomy
//
//  Created by Mark Murray on 11/9/16.
//
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let midiPlayer = MIDIPlayer()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        
        midiPlayer.configure()
        
        // chords from Amy <3
        midiPlayer.startMIDINote(midiNote: MIDINote(name: .D5))
        midiPlayer.startMIDINote(midiNote: MIDINote(name: .A4))
        midiPlayer.startMIDINote(midiNote: MIDINote(name: .G5))
        midiPlayer.startMIDINote(midiNote: MIDINote(name: .C6))
        
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .G4))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .C5))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .Ds5))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .Gs5))
        
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .B4))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .Ds5))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .Gs5))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .Cs6))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .F6))

//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .C3))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .G4))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .E5))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .As5))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .D6))
        
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .D4))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .F5))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .A5))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .C6))
//        midiPlayer.startMIDINote(midiNote: MIDINote(name: .F6))
        
        return true
    }
}

