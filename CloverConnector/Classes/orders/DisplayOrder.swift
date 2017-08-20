/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */

import Foundation
import ObjectMapper



@objc
public class DisplayOrder:NSObject, Mappable {

  /*
  * Unique identifier
   */
  public var id:String? = nil
  /*
  * Currency of this order
   */
  public var currency:String? = nil
  /*
  * The employee associated with this order
   */
  public var employee:String? = nil
  /*
  * Formatted subtotal of the order
   */
  public var subtotal:String? = nil
  /*
  * Formatted tax of the order
   */
  public var tax:String? = nil
  /*
  * Formatted total of the order
   */
  public var total:String? = nil
  public var title:String? = nil
  public var note:String? = nil
  /*
  * Optional service charge name (gratuity) applied to this order
   */
  public var serviceChargeName:String? = nil
  /*
  * Optional service charge amount (gratuity) applied to this order
   */
  public var serviceChargeAmount:String? = nil
    public var discounts:Array<DisplayDiscount> = [DisplayDiscount]()//ListWrapper<DisplayDiscount>? = ListWrapper()
    public var lineItems:Array<DisplayLineItem> = [DisplayLineItem]()//ListWrapper<DisplayLineItem>? = ListWrapper()
  /*
  * Formatted amount remaining
   */
  public var amountRemaining:String? = nil
  /*
  * Payments that were made for this order
   */
  public var payments:Array<DisplayPayment>?//ListWrapper<DisplayPayment>? = nil

  public override required init() {
    super.init()
  }

  required public init?(_ map: Map) {
    super.init()
  }

  public func mapping(map:Map) {
    
      id <- map["id"]
      currency <- map["currency"]
      employee <- map["employee"]
      subtotal <- map["subtotal"]
      tax <- map["tax"]
      total <- map["total"]
      title <- map["title"]
      note <- map["note"]
      serviceChargeName <- map["serviceChargeName"]
      serviceChargeAmount <- map["serviceChargeAmount"]
      discounts <- map["discounts.elements"]
      lineItems <- map["lineItems.elements"]
      amountRemaining <- map["amountRemaining"]
      payments <- map["payments"]

  }

/*
  public required init(jsonObj:NSDictionary){
    super.init()

  id = jsonObj.valueForKey("id") as! String?

  currency = jsonObj.valueForKey("currency") as! String?

  employee = jsonObj.valueForKey("employee") as! String?

  subtotal = jsonObj.valueForKey("subtotal") as! String?

  tax = jsonObj.valueForKey("tax") as! String?

  total = jsonObj.valueForKey("total") as! String?

  title = jsonObj.valueForKey("title") as! String?

  note = jsonObj.valueForKey("note") as! String?

  serviceChargeName = jsonObj.valueForKey("serviceChargeName") as! String?

  serviceChargeAmount = jsonObj.valueForKey("serviceChargeAmount") as! String?

  discounts = ListWrapper<DisplayDiscount>(jsonObj: jsonObj.valueForKey("discounts") as! NSDictionary)


  lineItems = ListWrapper<DisplayLineItem>(jsonObj: jsonObj.valueForKey("lineItems") as! NSDictionary)


  amountRemaining = jsonObj.valueForKey("amountRemaining") as! String?

  payments = ListWrapper<DisplayPayment>(jsonObj: jsonObj.valueForKey("payments") as! NSDictionary)

  }
*/

}
