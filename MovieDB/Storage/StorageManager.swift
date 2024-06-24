//
//  StorageManager.swift
//  MovieDB
//
//  Created by astanahub on 05.06.2024.
//

import Foundation

class StorageManager {

    static let shared = StorageManager()
    
    public enum Keys: String {
        case watchList
    }
    private let userDefaults = UserDefaults.standard
    func writeData(_ object: Any?, key: StorageManager.Keys) {
        self.userDefaults.set(object, forKey: key.rawValue)
    }
    func readData(key: StorageManager.Keys) -> Any? {
        self.userDefaults.object(forKey: key.rawValue)
    }
    func writeWatchList(_ object: Int, key: StorageManager.Keys) {
        if var arraywatchList =  readData(key: key) as? [Int] {
            arraywatchList.append(object)
            self.userDefaults.set(arraywatchList, forKey: key.rawValue)
        }
        else {
            var arraywatchlist:[Int] = []
            arraywatchlist.append(object)
            self.userDefaults.set(arraywatchlist,forKey: key.rawValue)
        }
    }
    func removeWatchList(_ object: Int, key: StorageManager.Keys) {
        guard var arrayWatchList = self.userDefaults.object(forKey: key.rawValue) as? [Int] else {return}
        guard let removeIndex = arrayWatchList.firstIndex(where: {$0 == object}) else {return}
        arrayWatchList.remove(at: removeIndex)
        self.userDefaults.set(arrayWatchList, forKey: key.rawValue)
    }
}
