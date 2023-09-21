//
//  Timer.swift
//  SchedulleriOS
//
//  Created by Agnes Triselia Yudia on 21/09/23.
//

import Foundation
import Alamofire

class TimerExample {
    var timer: Timer?
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(timerFired), userInfo: nil, repeats: true)
        timer?.fire()
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc func timerFired() {
        print("Timer fired!")
        fetchingAPIData()
    }
    
    func fetchingAPIData() {
        let url = "https://pokeapi.co/api/v2/pokemon?"
        AF.request(url, method: .get, parameters:  nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response { responce in
            switch responce.result {
            case.success(let data):
                do {
                    let jsonData = try JSONDecoder().decode(PokemonIndex.self, from: data!)
                    // clousure calling
                    print("ini adalah jsonDataAPI:", jsonData)
                } catch {
                    print(String(describing: error))
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }.resume()
    }
}
