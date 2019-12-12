//
//  ProgressItem.swift
//  Pods
//
//  Created by Sapozhnik Ivan on 12/05/17.
//
//

import Foundation

public class ProgressItem {
    
    public typealias CompletionHanlder = () -> ()
    
    let duration: Double!
    let handler: CompletionHanlder?
    let minValue:Float
    let maxValue:Float
    
    public init(withDuration duration: Double, handler completion: CompletionHanlder? = nil) {
        self.duration = duration
        self.handler = completion
        self.minValue = 0
        self.maxValue = 100
    }
    public init(withDuration duration: Double, minmum min:Float ,maximum max:Float,handler completion: CompletionHanlder? = nil) {
        self.duration = duration
        self.handler = completion
        self.minValue = min
        self.maxValue = max
    }
}
