//
//  Dynamic.swift
//  MVVM project
//
//  Created by Aliaksandr Miatnikau on 18.10.22.
//

import Foundation

class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    var value: T {
        didSet{
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
}
