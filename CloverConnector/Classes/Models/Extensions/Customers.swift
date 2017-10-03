
/**
 * Autogenerated by Avro
 *
 * DO NOT EDIT DIRECTLY
 */

import ObjectMapper

extension CLVModels {
  public class Customers {
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Customers7Address)public class Address: NSObject, NSCoding, Mappable {
      public var id: String?
      public var address1: String?
      public var address2: String?
      public var address3: String?
      public var city: String?
      public var country: String?
      public var state: String?
      public var zip: String?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(address1, forKey: "address1")
        aCoder.encode(address2, forKey: "address2")
        aCoder.encode(address3, forKey: "address3")
        aCoder.encode(city, forKey: "city")
        aCoder.encode(country, forKey: "country")
        aCoder.encode(state, forKey: "state")
        aCoder.encode(zip, forKey: "zip")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        address1 = aDecoder.decodeObject(forKey: "address1") as? String
        address2 = aDecoder.decodeObject(forKey: "address2") as? String
        address3 = aDecoder.decodeObject(forKey: "address3") as? String
        city = aDecoder.decodeObject(forKey: "city") as? String
        country = aDecoder.decodeObject(forKey: "country") as? String
        state = aDecoder.decodeObject(forKey: "state") as? String
        zip = aDecoder.decodeObject(forKey: "zip") as? String
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        address3 <- map["address3"]
        city <- map["city"]
        country <- map["country"]
        state <- map["state"]
        zip <- map["zip"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Customers4Card)public class Card: NSObject, NSCoding, Mappable {
      public var id: String?
      public var first6: String?
      public var last4: String?
      public var firstName: String?
      public var lastName: String?
      public var expirationDate: String?
      public var cardType: String?
      public var token: String?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(first6, forKey: "first6")
        aCoder.encode(last4, forKey: "last4")
        aCoder.encode(firstName, forKey: "firstName")
        aCoder.encode(lastName, forKey: "lastName")
        aCoder.encode(expirationDate, forKey: "expirationDate")
        aCoder.encode(cardType, forKey: "cardType")
        aCoder.encode(token, forKey: "token")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        first6 = aDecoder.decodeObject(forKey: "first6") as? String
        last4 = aDecoder.decodeObject(forKey: "last4") as? String
        firstName = aDecoder.decodeObject(forKey: "firstName") as? String
        lastName = aDecoder.decodeObject(forKey: "lastName") as? String
        expirationDate = aDecoder.decodeObject(forKey: "expirationDate") as? String
        cardType = aDecoder.decodeObject(forKey: "cardType") as? String
        token = aDecoder.decodeObject(forKey: "token") as? String
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        first6 <- map["first6"]
        last4 <- map["last4"]
        firstName <- map["firstName"]
        lastName <- map["lastName"]
        expirationDate <- map["expirationDate"]
        cardType <- map["cardType"]
        token <- map["token"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Customers8Customer)public class Customer: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// The order with which the customer is associated
      public var orderRef: CLVModels.Order.Order?
      /// First/given name of the customer
      public var firstName: String?
      /// Last name/surname of the customer
      public var lastName: String?
      public var marketingAllowed: Bool?
      public var customerSince: Int?
      public var orders: [CLVModels.Order.Order]?
      public var addresses: [CLVModels.Customers.Address]?
      public var emailAddresses: [CLVModels.Customers.EmailAddress]?
      public var phoneNumbers: [CLVModels.Customers.PhoneNumber]?
      public var cards: [CLVModels.Customers.Card]?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(orderRef, forKey: "orderRef")
        aCoder.encode(firstName, forKey: "firstName")
        aCoder.encode(lastName, forKey: "lastName")
        aCoder.encode(marketingAllowed, forKey: "marketingAllowed")
        aCoder.encode(customerSince, forKey: "customerSince")
        aCoder.encode(orders, forKey: "orders")
        aCoder.encode(addresses, forKey: "addresses")
        aCoder.encode(emailAddresses, forKey: "emailAddresses")
        aCoder.encode(phoneNumbers, forKey: "phoneNumbers")
        aCoder.encode(cards, forKey: "cards")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        orderRef = aDecoder.decodeObject(forKey: "orderRef") as? CLVModels.Order.Order
        firstName = aDecoder.decodeObject(forKey: "firstName") as? String
        lastName = aDecoder.decodeObject(forKey: "lastName") as? String
        marketingAllowed = aDecoder.decodeObject(forKey: "marketingAllowed") as? Bool
        customerSince = aDecoder.decodeObject(forKey: "customerSince") as? Int
        orders = aDecoder.decodeObject(forKey: "orders") as? [CLVModels.Order.Order]
        addresses = aDecoder.decodeObject(forKey: "addresses") as? [CLVModels.Customers.Address]
        emailAddresses = aDecoder.decodeObject(forKey: "emailAddresses") as? [CLVModels.Customers.EmailAddress]
        phoneNumbers = aDecoder.decodeObject(forKey: "phoneNumbers") as? [CLVModels.Customers.PhoneNumber]
        cards = aDecoder.decodeObject(forKey: "cards") as? [CLVModels.Customers.Card]
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        orderRef <- map["orderRef"]
        firstName <- map["firstName"]
        lastName <- map["lastName"]
        marketingAllowed <- map["marketingAllowed"]
        customerSince <- map["customerSince"]
        orders <- map["orders.elements"]
        addresses <- map["addresses.elements"]
        emailAddresses <- map["emailAddresses.elements"]
        phoneNumbers <- map["phoneNumbers.elements"]
        cards <- map["cards.elements"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Customers12EmailAddress)public class EmailAddress: NSObject, NSCoding, Mappable {
      public var id: String?
      public var emailAddress: String?
      public var verifiedTime: Date?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(emailAddress, forKey: "emailAddress")
        aCoder.encode(verifiedTime, forKey: "verifiedTime")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        emailAddress = aDecoder.decodeObject(forKey: "emailAddress") as? String
        verifiedTime = aDecoder.decodeObject(forKey: "verifiedTime") as? Date
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        emailAddress <- map["emailAddress"]
        verifiedTime <- (map["verifiedTime"], CLVDateTransform())
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Customers11PhoneNumber)public class PhoneNumber: NSObject, NSCoding, Mappable {
      public var id: String?
      public var phoneNumber: String?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(phoneNumber, forKey: "phoneNumber")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        phoneNumber = aDecoder.decodeObject(forKey: "phoneNumber") as? String
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        phoneNumber <- map["phoneNumber"]
      }
    }
    
  }
}
