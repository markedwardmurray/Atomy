//
//  SoundConfigurable.swift
//  Atomy
//
//  Created by Mark Murray on 11/9/16.
//
//

import Foundation

struct MIDINote {
    let value: Int
    let name: String
    
    init(value: Int, name: String) {
        self.value = value
        self.name = name
    }
}

protocol SoundConfigurable {
    var midiNote: MIDINote { get }
}
