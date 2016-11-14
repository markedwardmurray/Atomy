//
//  MIDIPlayer.swift
//  Atomy
//
//  Created by Mark Murray on 11/13/16.
//
//

import Foundation
import AVFoundation
import AudioToolbox

class MIDIPlayer: AVAudioPlayer {
    
    let engine = AVAudioEngine()
    let sampler = AVAudioUnitSampler()
    
    func configure() {
        engine.attach(sampler)
        engine.connect(sampler, to: engine.outputNode, format: nil)
        loadPatch(gmpatch: gmBagpipe, channel: 0)
    }
    
    let melodicBank = UInt8(kAUSampler_DefaultMelodicBankMSB)
    let defaultBankLSB = UInt8(kAUSampler_DefaultBankLSB)
    let gmMarimba = UInt8(12)
    let gmHarpsichord = UInt8(6)
    let gmBagpipe = UInt8(110)
    
    func loadPatch(gmpatch:UInt8, channel:UInt8 = 0) {
        
        guard let soundbank =
            Bundle.main.url(forResource: "GeneralUser GS MuseScore v1.442", withExtension: "sf2")
            else {
                print("could not read sound font")
                return
        }
        
        do {
            try engine.start()
            try sampler.loadSoundBankInstrument(at: soundbank, program:gmpatch, bankMSB: melodicBank, bankLSB: defaultBankLSB)
            
        } catch let error as NSError {
            print("Failed to load sound bank instrument: \(error.localizedDescription)")
            return
        }
        
        self.sampler.sendProgramChange(gmpatch, bankMSB: melodicBank, bankLSB: defaultBankLSB, onChannel: 0)
    }
    
    func startMIDINote(midiNote: MIDINote) {
        self.sampler.startNote(midiNote.value, withVelocity: 16, onChannel: 0)
    }
    
    func stopMIDINote(midiNote: MIDINote) {
        self.sampler.stopNote(midiNote.value, onChannel: 0);
    }
    
    func playMIDINote(midiNote: MIDINote, duration: TimeInterval) {
        self.sampler.startNote(midiNote.value, withVelocity: 16, onChannel: 0)
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            self.sampler.stopNote(midiNote.value, onChannel: 0)
        }
    }
    
}
