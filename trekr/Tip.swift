//
//  Tip.swift
//  trekr
//
//  Created by Jai  on 06/05/23.
//

import Foundation
struct Tip:Decodable{
    let text : String
    let children : [Tip]?
}
