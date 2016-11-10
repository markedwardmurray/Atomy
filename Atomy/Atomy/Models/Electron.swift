//
//  Electron.swift
//  Atomy
//
//  Created by Mark Murray on 11/9/16.
//
//

import Foundation

struct Electron: SoundConfigurable {
    let midiNote: MIDINote
    
    init(midiNote: MIDINote) {
        self.midiNote = midiNote;
    }
}
