//
//  CloverDeviceConfiguration.swift
//  CloverConnector
//
//  
//  Copyright © 2017 Clover Network, Inc. All rights reserved.
//

import Foundation

@objc
public protocol CloverDeviceConfiguration {
    var remoteApplicationID:String { get set }
    var remoteSourceSDK:String { get }
    
    func getTransport() -> CloverTransport?
    
    func getCloverDeviceTypeName() -> String
    
    func getMessagePackageName() -> String
    
    func getName() -> String
    
    func getMaxMessageCharacters() -> Int
}
