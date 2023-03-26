//
//  File.swift
//  
//
//  Created by DanHa on 26/03/2023.
//

import Foundation
import FirebaseRemoteConfig

enum ValueKey: String {
    case one_fr_1a = "one_fr_1a"
    case one_fr_1b = "one_fr_1b"
    case one_fr_1c = "one_fr_1c"
    case one_fr_1d = "one_fr_1d"
    case one_fr_1e = "one_fr_1e"
    case one_fr_1f = "one_fr_1f"
    case one_fr_1g = "one_fr_1g"
    case one_fr_1h = "one_fr_1h"
    case one_fr_1j = "one_fr_1j"
    case one_fr_1k = "one_fr_1k"
    case one_fr_1l = "one_fr_1l"
    
    case two_fr_1a = "two_fr_1a"
    case two_fr_2a = "two_fr_2a"
    case two_fr_3a = "two_fr_3a"
    case two_fr_4a = "two_fr_4a"
    case two_fr_5a = "two_fr_5a"
    case two_fr_6a = "two_fr_6a"
    case two_fr_7a = "two_fr_7a"
    case two_fr_8a = "two_fr_8a"
    case two_fr_9a = "two_fr_9a"
    case two_fr_10a = "two_fr_10a"
    case two_fr_11a = "two_fr_11a"
    case two_fr_12a = "two_fr_12a"
    case two_fr_13a = "two_fr_13a"
    case two_fr_14a = "two_fr_14a"
    
    case Chung_fr_01 = "Chung_fr_01"
    case Chung_fr_02 = "Chung_fr_02"
    case Chung_fr_03 = "Chung_fr_03"
    case Chung_fr_04 = "Chung_fr_04"
    case Chung_fr_05 = "Chung_fr_05"
    case Chung_fr_06 = "Chung_fr_06"
    case Chung_fr_07 = "Chung_fr_07"
    case Chung_fr_08 = "Chung_fr_08"
    
    case Chung_linkurl_09 = "Chung_linkurl_09"
    case Chung_linkurl_10 = "Chung_linkurl_10"
    case Chung_linkurl_11 = "Chung_linkurl_11"
    case Chung_linkurl_12 = "Chung_linkurl_12"
    case Chung_linkurl_13 = "Chung_linkurl_13"
    case Chung_linkurl_14 = "Chung_linkurl_14"
    case Chung_linkurl_15 = "Chung_linkurl_15"
    
    case three_fr_1a = "three_fr_1a"
    case three_fr_2a = "three_fr_2a"
    case three_fr_3a = "three_fr_3a"
    //4
    case outer_fr_1a = "outer_fr_1a"
    case eaab_fr_1a = "eaab_fr_1a"
    //5
    case status_fr_1a = "status_fr_1a"
    //6
    case dq4_fr_1a = "dq4_fr_1a"
    //7
    case seven_fr_1a = "seven_fr_1a"
    case seven_fr_2a = "seven_fr_2a"
    //8
    case eight_fr_1a = "eight_fr_1a"
    case eight_fr_2a = "eight_fr_2a"
    case eight_fr_3a = "eight_fr_3a"
    case eight_fr_4a = "eight_fr_4a"
    case eight_fr_5a = "eight_fr_5a"
    case eight_fr_6a = "eight_fr_6a"
    case eight_fr_7a = "eight_fr_7a"
    //9
    case nine_fr_1a = "nine_fr_1a"
    case nine_fr_2a = "nine_fr_2a"
    case nine_fr_3a = "nine_fr_3a"
    
    case selectad = "selectad"
    case switchaccounts = "switchaccounts"
    case active = "active"
     case foundid = "foundid"
    case act = "act"
    case dis = "dis"
    case uns = "uns"
    case all = "all"
    case acco = "acco"
    case nameapp = "nameapp"
    case titleapp = "titleapp"
    case wereloading = "wereloading"
    case timere = "timere"
    case pleasedo = "pleasedo"
    case takewhile = "takewhile"
    case  idfound = "idfound"
    case activecam = "activecam"
//
    case name_api_01 = "name_api_01"
    case name_api_02 = "name_api_02"
    case name_api_03 = "name_api_03"
    case name_api_04 = "name_api_04"
    case name_api_05 = "name_api_05"
   
    case name_api_06 = "name_api_06"
    case name_api_07 = "name_api_07"
    case name_api_08 = "name_api_08"

    case name_api_09 = "name_api_09"
    case name_api_10 = "name_api_10"
    case name_api_11 = "name_api_11"
    case name_api_12 = "name_api_12"
    case name_api_13 = "name_api_13"
    case name_api_14 = "name_api_14"
    case name_api_15 = "name_api_15"
    
    case name_api_16 = "name_api_16"
    case name_api_17 = "name_api_17"
    case name_api_18 = "name_api_18"
    case name_api_19 = "name_api_19"
    
    case name_api_20 = "name_api_20"
    case name_api_21 = "name_api_21"
    case name_api_22 = "name_api_22"
    
    case name_api_23 = "name_api_23"
    case name_api_24 = "name_api_24"
    case name_api_25 = "name_api_25"
    case name_api_26 = "name_api_26"
    
}

class RCValues {
    static let sharedInstance = RCValues()
    var loadingDoneCallback: (() -> Void)?
    var fetchComplete = false

    private init() {
        loadDefaultValues()
        fetchCloudValues()
    }

    func loadDefaultValues() {
        let appDefaults: [String: Any?] = [
            ValueKey.one_fr_1a.rawValue: "",
            ValueKey.one_fr_1b.rawValue: "",
            ValueKey.one_fr_1c.rawValue: "",
            ValueKey.one_fr_1d.rawValue: "",
            ValueKey.one_fr_1e.rawValue: "",
            ValueKey.one_fr_1f.rawValue: "",
            ValueKey.one_fr_1g.rawValue: "",
            ValueKey.one_fr_1h.rawValue: "",
            ValueKey.one_fr_1j.rawValue: "",
            ValueKey.one_fr_1k.rawValue: "",
            ValueKey.one_fr_1l.rawValue: "",
            
            ValueKey.two_fr_1a.rawValue: "",
            ValueKey.two_fr_2a.rawValue: "",
            ValueKey.two_fr_3a.rawValue: "",
            ValueKey.two_fr_4a.rawValue: "",
            ValueKey.two_fr_5a.rawValue: "",
            ValueKey.two_fr_6a.rawValue: "",
            ValueKey.two_fr_7a.rawValue: "",
            ValueKey.two_fr_8a.rawValue: "",
            ValueKey.two_fr_9a.rawValue: "",
            ValueKey.two_fr_10a.rawValue: "",
            ValueKey.two_fr_11a.rawValue: "",
            ValueKey.two_fr_12a.rawValue: "",
            ValueKey.two_fr_13a.rawValue: "",
            ValueKey.two_fr_14a.rawValue: "",
            
            ValueKey.Chung_fr_01.rawValue: "",
            ValueKey.Chung_fr_02.rawValue: "",
            ValueKey.Chung_fr_03.rawValue: "",
            ValueKey.Chung_fr_04.rawValue: "",
            ValueKey.Chung_fr_05.rawValue: "",
            ValueKey.Chung_fr_06.rawValue: "",
            ValueKey.Chung_fr_07.rawValue: "",
            ValueKey.Chung_fr_08.rawValue: "",
            
            ValueKey.Chung_linkurl_09.rawValue: "",
            ValueKey.Chung_linkurl_10.rawValue: "",
            ValueKey.Chung_linkurl_11.rawValue: "",
            ValueKey.Chung_linkurl_12.rawValue: "",
            ValueKey.Chung_linkurl_13.rawValue: "",
            ValueKey.Chung_linkurl_14.rawValue: "",
            ValueKey.Chung_linkurl_15.rawValue: "",
            
            ValueKey.three_fr_1a.rawValue: "",
            ValueKey.three_fr_2a.rawValue: "",
            ValueKey.three_fr_3a.rawValue: "",
            //4
            ValueKey.outer_fr_1a.rawValue: "",
            ValueKey.eaab_fr_1a.rawValue: "",
            //5
            ValueKey.status_fr_1a.rawValue: "",
            //6
            ValueKey.dq4_fr_1a.rawValue: "",
            //7
            ValueKey.seven_fr_1a.rawValue: "",
            ValueKey.seven_fr_2a.rawValue: "",
            //8
            ValueKey.eight_fr_1a.rawValue: "",
            ValueKey.eight_fr_2a.rawValue: "",
            ValueKey.eight_fr_3a.rawValue: "",
            ValueKey.eight_fr_4a.rawValue: "",
            ValueKey.eight_fr_5a.rawValue: "",
            ValueKey.eight_fr_6a.rawValue: "",
            ValueKey.eight_fr_7a.rawValue: "",
            //9
            ValueKey.nine_fr_1a.rawValue: "",
            ValueKey.nine_fr_2a.rawValue: "",
            ValueKey.nine_fr_3a.rawValue: "",
            ValueKey.selectad.rawValue: "",
            ValueKey.switchaccounts.rawValue: "",
            ValueKey.active.rawValue: "",
            //5
            ValueKey.foundid.rawValue: "",
            ValueKey.act.rawValue: "",
            ValueKey.dis.rawValue: "",
            ValueKey.uns.rawValue: "",
            ValueKey.all.rawValue: "",
            ValueKey.acco.rawValue: "",
            //8
            ValueKey.nameapp.rawValue: "",
            ValueKey.titleapp.rawValue: "",
            ValueKey.wereloading.rawValue: "",
            ValueKey.timere.rawValue: "",
            ValueKey.pleasedo.rawValue: "",
            //9
            //We're loading your data...
            ValueKey.takewhile.rawValue: "",
            //Please do not close the app
            //10
            ValueKey.idfound.rawValue: "",
            ValueKey.activecam.rawValue: "",
            
            
            ValueKey.name_api_01.rawValue: "",
            ValueKey.name_api_02.rawValue: "",
            ValueKey.name_api_03.rawValue: "",
            ValueKey.name_api_04.rawValue: "",
            ValueKey.name_api_05.rawValue: "",
           
            ValueKey.name_api_06.rawValue: "",
            ValueKey.name_api_07.rawValue: "",
            ValueKey.name_api_08.rawValue: "",

            ValueKey.name_api_09.rawValue: "",
            ValueKey.name_api_10.rawValue: "",
            ValueKey.name_api_11.rawValue: "",
            ValueKey.name_api_12.rawValue: "",
            ValueKey.name_api_13.rawValue: "",
            ValueKey.name_api_14.rawValue: "",
            ValueKey.name_api_15.rawValue: "",
            
            ValueKey.name_api_16.rawValue: "",
            ValueKey.name_api_17.rawValue: "",
            ValueKey.name_api_18.rawValue: "",
            ValueKey.name_api_19.rawValue: "",
            
            ValueKey.name_api_20.rawValue: "",
            ValueKey.name_api_21.rawValue: "",
            ValueKey.name_api_22.rawValue: "",
            
            ValueKey.name_api_23.rawValue: "",
            ValueKey.name_api_24.rawValue: "",
            ValueKey.name_api_25.rawValue: "",
            ValueKey.name_api_26.rawValue: ""
        ]
        RemoteConfig.remoteConfig().setDefaults(appDefaults as? [String: NSObject])
    }

    func fetchCloudValues() {
        activateDebugMode()

        RemoteConfig.remoteConfig().fetch { [weak self] _, error in
            if let error = error {
                print("Uh-oh. Got an error fetching remote values \(error)")
                // In a real app, you would probably want to call the loading done callback anyway,
                // and just proceed with the default values. I won't do that here, so we can call attention
                // to the fact that Remote Config isn't loading.
                return
            }

            RemoteConfig.remoteConfig().activate { [weak self] _, _ in
                print("Retrieved values from the cloud!")
                self?.fetchComplete = true
                DispatchQueue.main.async {
                    self?.loadingDoneCallback?()
                }
            }
        }
    }

    func activateDebugMode() {
        let settings = RemoteConfigSettings()
        // WARNING: Don't actually do this in production!
        settings.minimumFetchInterval = 5
        RemoteConfig.remoteConfig().configSettings = settings
    }

    func bool(forKey key: ValueKey) -> Bool {
        RemoteConfig.remoteConfig()[key.rawValue].boolValue
    }

    func string(forKey key: ValueKey) -> String {
        RemoteConfig.remoteConfig()[key.rawValue].stringValue ?? ""
    }

    func double(forKey key: ValueKey) -> Double {
        RemoteConfig.remoteConfig()[key.rawValue].numberValue.doubleValue
    }
}

