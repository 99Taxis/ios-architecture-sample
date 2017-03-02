//
//  Tip.swift
//  Passenger99Lite
//
//  Created by Vinicius Rodrigues on 3/1/17.
//  Copyright © 2017 99. All rights reserved.
//

import Foundation


struct Tip : Equatable{
    let value: Float
    let description: String
}


func ==(lhs: Tip, rhs: Tip) -> Bool{
    let equalValue = lhs.value == rhs.value
    let equalDescription = lhs.description == rhs.description
    return equalValue && equalDescription
}
