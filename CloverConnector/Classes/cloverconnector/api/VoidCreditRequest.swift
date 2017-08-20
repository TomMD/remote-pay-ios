//
//  Copyright © 2017 Clover Network, Inc. All rights reserved.
//

import Foundation
import ObjectMapper



/// :nodoc:
public class VoidCreditRequest:Mappable {

  /*
  * Identifier for the request
   */
  var requestId:String? = nil 
  /*
  * Unique identifier
   */
  var orderId:String? = nil 
  /*
  * Unique identifier
   */
  var creditId:String? = nil 

  public required init() {

  }

  required public init?(_ map: Map) {
  }

  public func mapping(map:Map) {
  requestId <- map["requestId"]

  orderId <- map["orderId"]

  creditId <- map["creditId"]

  }

/*
  public required init(jsonObj:NSDictionary){
    super.init()

  requestId = jsonObj.valueForKey("requestId") as! String?

  orderId = jsonObj.valueForKey("orderId") as! String?

  creditId = jsonObj.valueForKey("creditId") as! String?
  }
*/

}

