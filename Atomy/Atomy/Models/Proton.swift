//
//  Proton.swift
//  Atomy
//
//  Created by Mark Murray on 11/9/16.
//
//

import Foundation

struct Proton: SoundConfigurable {
    let midiNote: MIDINote
    
    init(midiNote: MIDINote) {
        self.midiNote = midiNote;
    }
    
    init(midiNoteName: MIDINoteName) {
        self.midiNote = MIDINote(name: midiNoteName)
    }
}
