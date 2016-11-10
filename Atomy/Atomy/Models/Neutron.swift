//
//  Neutron.swift
//  Atomy
//
//  Created by Mark Murray on 11/9/16.
//
//

import UIKit
import ColorWithHex

struct Neutron: ColorConfigurable {
    let hexColor: HexColor
    var color: UIColor {
        return UIColor.colorWithHex(self.hexColor)!
    }
    
    init(hexColor: HexColor) {
        self.hexColor = hexColor;
    }

}
