//
//  MIDINote.swift
//  Atomy
//
//  Created by Mark Murray on 11/9/16.
//
//

import Foundation



struct MIDINote {
    let value: Int
    let name: MIDINoteName
    
    init(name: MIDINoteName) {
        self.name = name
        self.value = type(of: self).valueForName(name: name)
    }
    
    static func valueForName(name: MIDINoteName) -> Int {
        switch name {
        case  .C3:
            return 36
        case .Cs3:
            return 37
        case  .D3:
            return 38
        case .Ds3:
            return 39
        case  .E3:
            return 40
        case  .F3:
            return 41
        case .Fs3:
            return 42
        case  .G3:
            return 43
        case .Gs3:
            return 44
        case  .A3:
            return 45
        case .As3:
            return 46
        case  .B3:
            return 47
        case  .C4:
            return 48
        case .Cs4:
            return 49
        case  .D4:
            return 50
        case .Ds4:
            return 51
        case  .E4:
            return 52
        case  .F4:
            return 53
        case .Fs4:
            return 54
        case  .G4:
            return 55
        case .Gs4:
            return 56
        case  .A4:
            return 57
        case .As4:
            return 58
        case  .B4:
            return 59
        case  .C5:
            return 60
        case .Cs5:
            return 61
        case  .D5:
            return 62
        case .Ds5:
            return 63
        case  .E5:
            return 64
        case  .F5:
            return 65
        case .Fs5:
            return 66
        case  .G5:
            return 67
        case .Gs5:
            return 68
        case  .A5:
            return 69
        case .As5:
            return 70
        case  .B5:
            return 71
        case  .C6:
            return 72
        case .Cs6:
            return 73
        case  .D6:
            return 74
        case .Ds6:
            return 75
        case  .E6:
            return 76
        case  .F6:
            return 77
        case .Fs6:
            return 78
        case  .G6:
            return 79
        case .Gs6:
            return 80
        case  .A6:
            return 81
        case .As6:
            return 82
        case  .B6:
            return 83
        case  .C7:
            return 84
        }
    }
    
}

enum MIDINoteName : String {
    case  C3 =  "C3"
    case Cs3 = "C#3"
    case  D3 =  "D3"
    case Ds3 = "D#3"
    case  E3 =  "E3"
    case  F3 =  "F3"
    case Fs3 = "F#3"
    case  G3 =  "G3"
    case Gs3 = "G#3"
    case  A3 =  "A3"
    case As3 = "A#3"
    case  B3 =  "B3"
    case  C4 =  "C4"
    case Cs4 = "C#4"
    case  D4 =  "D4"
    case Ds4 = "D#4"
    case  E4 =  "E4"
    case  F4 =  "F4"
    case Fs4 = "F#4"
    case  G4 =  "G4"
    case Gs4 = "G#4"
    case  A4 =  "A4"
    case As4 = "A#4"
    case  B4 =  "B4"
    case  C5 =  "C5"
    case Cs5 = "C#5"
    case  D5 =  "D5"
    case Ds5 = "D#5"
    case  E5 =  "E5"
    case  F5 =  "F5"
    case Fs5 = "F#5"
    case  G5 =  "G5"
    case Gs5 = "G#5"
    case  A5 =  "A5"
    case As5 = "A#5"
    case  B5 =  "B5"
    case  C6 =  "C6"
    case Cs6 = "C#6"
    case  D6 =  "D6"
    case Ds6 = "D#6"
    case  E6 =  "E6"
    case  F6 =  "F6"
    case Fs6 = "F#6"
    case  G6 =  "G6"
    case Gs6 = "G#6"
    case  A6 =  "A6"
    case As6 = "A#6"
    case  B6 =  "B6"
    case  C7 =  "C7"
}

