![alt text](https://www.clover.com/assets/images/public-site/press/clover_primary_gray_rgb.png)

# Remote-Pay SDK for iOS

This repository provides a Swift 2.3 implementation of the CloverConnector SDK that enables iOS and MacOS to communicate with a tethered Clover Mini.

### Dependencies
  - ObjectMapper - Provides JSON serialization/deserialization
  - SwiftyJSON - Provides simple JSON parsing
  - Starscream - Provides WebSocket client capabilities

### Building the Example App

1. Download and install Xcode 7.3.1 or higher (with Sswift 2.3 support)
2. Install CocoaPods
    - Run `sudo gem install cocoapods`
3. Clone/download this CloverConnector repository
4. Type `cd remote-pay-ios/Example`
5. Run `pod install`
    - This should create a Pods directory populated with dependencies, as well as a workspace file that includes the Example project and an addition Pods project
6. Open the CloverConnector.xcworkspace file
    - Change the Bundle identifier for the CloverConnector > CloverConnector_Example target
    - Change the signing Team for the CloverConnector > CloverConnector_Example target

### Using CloverConnector in your project
  - pod 'CloverConnector', :git => 'https://github.com/clover/remote-pay-ios.git', :branch => '1.2.0.b'
  - Example cocoapod (http://cocoapods.org/) `Podfile` snippet
---
  ```platform :ios, '8.0'
  use frameworks!

  target 'Register_App' do
    pod 'CloverConnector', :git => 'https://github.com/clover/remote-pay-ios.git', :branch => '1.2.0.b'
  end

  post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '2.3'
        end
    end
  end
  ```
---
  Sample code using CloverConnector
  ```swift
import CloverConnector

class ConnectionManager : DefaultCloverConnectorListener, PairingDeviceConfiguration {
    var cc:ICloverConnector?
    
    func connect() {
        // load from previous pairing, or nil will force/require
        // a new pairing with the device
        let savedAuthToken = loadAuthToken()
        
        let config = WebSocketDeviceConfiguration(endpoint: "wss://192.168.1.115:12345/remote_pay", remoteApplicationID: "com.yourcompany.pos.app:4.3.5", posName: "RegisterApp", posSerial: "ABC-123", pairingAuthToken: savedAuthToken, pairingDeviceConfiguration: self)
        
        cc = CloverConnector(config: config)
        
        cc?.addCloverConnectorListener(self)
        
        cc?.initializeConnection()
    }
    
    func doSale() {
        // if onDeviceReady has been called
        let saleRequest = SaleRequest(amount: 1743, externalId: "bc54de43f3")
        // configure other properties of SaleRequest
        cc?.sale(saleRequest)
    }
    
    func saveAuthToken(token:String) {}
    func loadAuthToken() -> String? { return nil }
    
    
    // PairingDeviceConfiguration
    func onPairingCode(pairingCode: String) {
        // display pairingCode to user, and enter on the mini
    }
    func onPairingSuccess(authToken: String) {
        // pairing is successful
        // save this authToken to pass in to the config, so pairing
        // will happen automatically
        saveAuthToken(authToken)
    }
    // PairingDeviceConfiguration
    
    
    // DefaultCloverConnectorListener
    
    // called when device is disconnected
    override func onDeviceDisconnected() {}
    // called when device is connected, but not ready for requests
    override func onDeviceConnected() {}
    // called when device is ready to take requests
    override func onDeviceReady(info:MerchantInfo){}
    // required if Mini wants the POS to verify a signature
    override func onVerifySignatureRequest(signatureVerifyRequest: VerifySignatureRequest) {
        //present signature to user, then
        // acceptSignature(...) or rejectSignature(...)
    }
    // required if Mini wants the POS to verify a payment
    override func onConfirmPaymentRequest(request: ConfirmPaymentRequest) {
        //present 1 or more challenges to user, then
        cc?.acceptPayment(request.payment!)
        // or
        // cc?.rejectPayment(...)
    }
    // override other callback methods
    override func onSaleResponse(response:SaleResponse) {
        if response.success {
            // sale successful and payment is in the response (response.payment)
        } else {
            // sale failed or was canceled
        }
    }
    override func onAuthResponse(response:AuthResponse) {}
    override func onPreAuthResponse(response:PreAuthResponse) {}
    // will provide UI information about the activity on the Mini,
    // and may provide input options for the POS to select some
    // options on behalf of the customer
    override func onDeviceActivityStart(deviceEvent:CloverDeviceEvent){} // see CloverConnectorListener.swift for example
                                                                         // of calling invokeInputOption from this callback
    override func onDeviceActivityEnd(deviceEvent:CloverDeviceEvent){}
    // etc.
}

```

### Help

- [Tutorial for the iOS SDK](https://docs.clover.com/build/getting-started-with-cloverconnector/?sdk=ios)
- [API Documentation](https://clover.github.io/remote-pay-ios/1.3.1/docs/index.html)
- [Semi-Integration Space](https://community.clover.com/spaces/11/index.html) at the Clover Developer Community
