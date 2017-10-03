
/**
 * Autogenerated by Avro
 *
 * DO NOT EDIT DIRECTLY
 */

import ObjectMapper

extension CLVModels {
  public class Base {
    
    
    @objc(_TtCCC15CloverConnector9CLVModels4Base7Address)public class Address: NSObject, NSCoding, Mappable {
      public var address1: String?
      public var address2: String?
      public var address3: String?
      public var city: String?
      public var country: String?
      public var phoneNumber: String?
      public var state: String?
      public var zip: String?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(address1, forKey: "address1")
        aCoder.encode(address2, forKey: "address2")
        aCoder.encode(address3, forKey: "address3")
        aCoder.encode(city, forKey: "city")
        aCoder.encode(country, forKey: "country")
        aCoder.encode(phoneNumber, forKey: "phoneNumber")
        aCoder.encode(state, forKey: "state")
        aCoder.encode(zip, forKey: "zip")
      }
      
      required public init(coder aDecoder: NSCoder) {
        address1 = aDecoder.decodeObject(forKey: "address1") as? String
        address2 = aDecoder.decodeObject(forKey: "address2") as? String
        address3 = aDecoder.decodeObject(forKey: "address3") as? String
        city = aDecoder.decodeObject(forKey: "city") as? String
        country = aDecoder.decodeObject(forKey: "country") as? String
        phoneNumber = aDecoder.decodeObject(forKey: "phoneNumber") as? String
        state = aDecoder.decodeObject(forKey: "state") as? String
        zip = aDecoder.decodeObject(forKey: "zip") as? String
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        address1 <- map["address1"]
        address2 <- map["address2"]
        address3 <- map["address3"]
        city <- map["city"]
        country <- map["country"]
        phoneNumber <- map["phoneNumber"]
        state <- map["state"]
        zip <- map["zip"]
      }
    }
    
    
    
    public enum ApprovalStatus: String {
      case NEW
      case PENDING
      case APPROVED_PENDING_SIGNING
      case APPROVED
      case DENIED
      case PUBLISHED
    }
    
    
    
    public enum BusinessTypeCode: String {
      case FULL_SERVICE_RESTAURANT
      case QUICK_SERVICE_RESTAURANT
      case COFFEE_SHOP
      case BAKERY
      case BAR
      case FOOD_TRUCK
      case FROZEN_YOGURT
      case PIZZA
      case DELI
      case OTHER_RESTAURANT
      case BOUTIQUE
      case CONVENIENCE_STORE
      case GROCERY
      case LIQUOR_STORE
      case VAPE_SHOP
      case JEWELRY
      case FLORIST
      case OTHER_RETAIL
      case FITNESS
      case SPA
      case HAIR_SALON
      case HOME_AND_REPAIR
      case PROFESSIONAL_SERVICES
      case CATERING
      case OTHER_SERVICE
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels4Base11CountryInfo)public class CountryInfo: NSObject, NSCoding, Mappable {
      /// ISO 3166-1-alpha-2 code
      public var countryCode: String?
      public var displayName: String?
      public var localDisplayName: String?
      public var defaultCurrency: String?
      public var defaultTimezone: String?
      /// Indicates whether the state/province field is required when creating the address
      public var stateProvinceRequired: Bool?
      /// Indicates whether the ZIP/Postal code field is required when creating the address
      public var zipPostalRequired: Bool?
      /// Indicates whether the county field is required when creating the address
      public var countyRequired: Bool?
      public var defaultLocale: String?
      /// Indicates whether the country is enabled for app market billing
      public var appMarketBillingEnabled: Bool?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(countryCode, forKey: "countryCode")
        aCoder.encode(displayName, forKey: "displayName")
        aCoder.encode(localDisplayName, forKey: "localDisplayName")
        aCoder.encode(defaultCurrency, forKey: "defaultCurrency")
        aCoder.encode(defaultTimezone, forKey: "defaultTimezone")
        aCoder.encode(stateProvinceRequired, forKey: "stateProvinceRequired")
        aCoder.encode(zipPostalRequired, forKey: "zipPostalRequired")
        aCoder.encode(countyRequired, forKey: "countyRequired")
        aCoder.encode(defaultLocale, forKey: "defaultLocale")
        aCoder.encode(appMarketBillingEnabled, forKey: "appMarketBillingEnabled")
      }
      
      required public init(coder aDecoder: NSCoder) {
        countryCode = aDecoder.decodeObject(forKey: "countryCode") as? String
        displayName = aDecoder.decodeObject(forKey: "displayName") as? String
        localDisplayName = aDecoder.decodeObject(forKey: "localDisplayName") as? String
        defaultCurrency = aDecoder.decodeObject(forKey: "defaultCurrency") as? String
        defaultTimezone = aDecoder.decodeObject(forKey: "defaultTimezone") as? String
        stateProvinceRequired = aDecoder.decodeObject(forKey: "stateProvinceRequired") as? Bool
        zipPostalRequired = aDecoder.decodeObject(forKey: "zipPostalRequired") as? Bool
        countyRequired = aDecoder.decodeObject(forKey: "countyRequired") as? Bool
        defaultLocale = aDecoder.decodeObject(forKey: "defaultLocale") as? String
        appMarketBillingEnabled = aDecoder.decodeObject(forKey: "appMarketBillingEnabled") as? Bool
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        countryCode <- map["countryCode"]
        displayName <- map["displayName"]
        localDisplayName <- map["localDisplayName"]
        defaultCurrency <- map["defaultCurrency"]
        defaultTimezone <- map["defaultTimezone"]
        stateProvinceRequired <- map["stateProvinceRequired"]
        zipPostalRequired <- map["zipPostalRequired"]
        countyRequired <- map["countyRequired"]
        defaultLocale <- map["defaultLocale"]
        appMarketBillingEnabled <- map["appMarketBillingEnabled"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels4Base9Reference)public class Reference: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels4Base13ServiceCharge)public class ServiceCharge: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// The order with which the service charge is associated
      public var orderRef: CLVModels.Order.Order?
      /// Service charge name
      public var name: String?
      /// If this service charge is enabled
      public var enabled: Bool?
      /// DEPRECATED
      public var percentage: Int?
      /// Percent to charge times 10000, e.g. 12.5% will be 125000
      public var percentageDecimal: Int?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(orderRef, forKey: "orderRef")
        aCoder.encode(name, forKey: "name")
        aCoder.encode(enabled, forKey: "enabled")
        aCoder.encode(percentage, forKey: "percentage")
        aCoder.encode(percentageDecimal, forKey: "percentageDecimal")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        orderRef = aDecoder.decodeObject(forKey: "orderRef") as? CLVModels.Order.Order
        name = aDecoder.decodeObject(forKey: "name") as? String
        enabled = aDecoder.decodeObject(forKey: "enabled") as? Bool
        percentage = aDecoder.decodeObject(forKey: "percentage") as? Int
        percentageDecimal = aDecoder.decodeObject(forKey: "percentageDecimal") as? Int
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        orderRef <- map["orderRef"]
        name <- map["name"]
        enabled <- map["enabled"]
        percentage <- map["percentage"]
        percentageDecimal <- map["percentageDecimal"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels4Base6Tender)public class Tender: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// If this merchant tender is editable
      public var editable: Bool?
      /// Label Key
      public var labelKey: String?
      /// Label Key
      public var label: String?
      /// If this tender opens the cash drawer
      public var opensCashDrawer: Bool?
      /// Allow tipping on payment from tender
      public var supportsTipping: Bool?
      /// If this merchant tender is enabled
      public var enabled: Bool?
      /// If this merchant tender is visible
      public var visible: Bool?
      /// Label Key
      public var instructions: String?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(editable, forKey: "editable")
        aCoder.encode(labelKey, forKey: "labelKey")
        aCoder.encode(label, forKey: "label")
        aCoder.encode(opensCashDrawer, forKey: "opensCashDrawer")
        aCoder.encode(supportsTipping, forKey: "supportsTipping")
        aCoder.encode(enabled, forKey: "enabled")
        aCoder.encode(visible, forKey: "visible")
        aCoder.encode(instructions, forKey: "instructions")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        editable = aDecoder.decodeObject(forKey: "editable") as? Bool
        labelKey = aDecoder.decodeObject(forKey: "labelKey") as? String
        label = aDecoder.decodeObject(forKey: "label") as? String
        opensCashDrawer = aDecoder.decodeObject(forKey: "opensCashDrawer") as? Bool
        supportsTipping = aDecoder.decodeObject(forKey: "supportsTipping") as? Bool
        enabled = aDecoder.decodeObject(forKey: "enabled") as? Bool
        visible = aDecoder.decodeObject(forKey: "visible") as? Bool
        instructions = aDecoder.decodeObject(forKey: "instructions") as? String
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        editable <- map["editable"]
        labelKey <- map["labelKey"]
        label <- map["label"]
        opensCashDrawer <- map["opensCashDrawer"]
        supportsTipping <- map["supportsTipping"]
        enabled <- map["enabled"]
        visible <- map["visible"]
        instructions <- map["instructions"]
      }
    }
    
  }
}
