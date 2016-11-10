//
//  ColorConfigurable.swift
//  Atomy
//
//  Created by Mark Murray on 11/9/16.
//
//

import UIKit

typealias HexColor = String

protocol ColorConfigurable {
    var hexColor: HexColor { get }
    var color: UIColor { get }
}

