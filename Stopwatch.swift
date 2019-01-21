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
    
    var resumeTimer:Double = 0.0
    
    var elapsedTime: TimeInterval{
        if let startTime = self.startTime{
            return resumeTimer + -startTime.timeIntervalSinceNow
            
        }else{
            return 0
        }
    }
    
    var isRunning: Bool{
        return startTime != nil
    }
    func start(){
        if !isRunning{
        startTime = Date()
        }
    }
    func stop(){
        startTime = nil
        resumeTimer = 0.0
    }
    func pause() {
        resumeTimer = elapsedTime
        startTime = nil
    }
}
