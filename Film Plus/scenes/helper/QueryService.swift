
import Foundation
import RxCocoa
import RxSwift

class QueryService {
    static var instance: QueryService? = nil
    static var shared: QueryService{
        get{
            if instance == nil{
                instance = QueryService()
            }
            return instance!
        }
    }
    
    private let defaultSession = URLSession(configuration: .default)
//    private let downloadSession = URLSession(configuration: .background(withIdentifier: "download"))
    private let threadLimit = 4
    private var tasks: [String: URLSessionTask] = [:]
    private var running: [String] = []
    
    func doThread() {
        for (index,task) in tasks.enumerated(){
            if index >= threadLimit{
                break
            }
            if !running.contains(task.key) {
                running.append(task.key)
                task.value.resume()
            }
        }
    }
}
