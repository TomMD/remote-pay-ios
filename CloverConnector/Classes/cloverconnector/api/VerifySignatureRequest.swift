//
//  Copyright © 2017 Clover Network, Inc. All rights reserved.
//

import Foundation
import ObjectMapper


/**
 request information for a request initiated by the device
 for a transaction
 */
@objc
public class VerifySignatureRequest:NSObject, Mappable {

  /*
  * Identifier for the request
   */
  var requestId:String? = nil 
  /*
  * Payment that the signature is verifying for
   */
  public var payment:CLVModels.Payments.Payment? = nil
  public var signature:Signature? = nil

  public override required init() {
    super.init()
  }
/// :nodoc:
  required public init?(_ map: Map) {
    super.init()
  }
/// :nodoc:
  public func mapping(map:Map) {
    requestId <- map["requestId"]

    let paymentTransform = TransformOf<CLVModels.Payments.Payment, String>(fromJSON: { (value: String?) -> CLVModels.Payments.Payment? in
        
        if let val = value,
            let pi = Mapper<CLVModels.Payments.Payment>().map(val) {
            return pi
        }
        return nil
        }, toJSON: { (obj: CLVModels.Payments.Payment?) -> String? in
            
            if let val = obj,
                let value = Mapper().toJSONString(val, prettyPrint:true) {
                return String(value)
            }
            return nil
    })
    
    payment <- (map["payment"], paymentTransform)
    
    let signatureTransform = TransformOf<Signature, String>(fromJSON: { (value: String?) -> Signature? in
        
        if let val = value,
            let pi = Mapper<Signature>().map(val) {
            return pi
        }
        return nil
        }, toJSON: { (obj: Signature?) -> String? in
            
            if let val = obj,
                let value = Mapper().toJSONString(val, prettyPrint:true) {
                return String(value)
            }
            return nil
    })
    //debugPrint(map["signature"])
    
    //    signature <- (map["signature"], sigTransform)
    signature <- map["signature"]
  }

}

