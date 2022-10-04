//
//  ReusableIdentifier.swift
//  Escaper
//
//  Created by 권민재 on 2022/10/04.
//

import Foundation


extension NSObject {
    static var reusableIdentifier: String {
        return String(describing: self)
    }
}
