//
//  Stopwatch.swift
//  stopwatch
//
//  Created by Bo Ning Li on 1/14/19.
//  Copyright © 2019 Langara College. All rights reserved.
//

import Foundation

class Stopwatch{
    
    private var startTime: Date?
    
    var elapsedTime: TimeInterval{
        if let startTime = self.startTime{
            return -startTime.timeIntervalSinceNow
            
        }else{
            return 0
        }
    }
    
    var isRunning: Bool{
        return startTime != nil
    }
    func start(){
        startTime = Date()
    }
    func stop(){
        startTime = nil
    }
}
