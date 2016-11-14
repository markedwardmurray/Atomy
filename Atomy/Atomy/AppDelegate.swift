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
        midiPlayer.startMIDINote(midiNote: MIDINote(name: .D5))
        midiPlayer.startMIDINote(midiNote: MIDINote(name: .A5))
        midiPlayer.startMIDINote(midiNote: MIDINote(name: .C5))
        midiPlayer.startMIDINote(midiNote: MIDINote(name: .F5))
        
        return true
    }
}

