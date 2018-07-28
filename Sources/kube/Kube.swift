
import Commandy

enum Kube: String, Commandy.Cli {
    
    case login
    case log
    
    static var allCases: [Kube] = [.login, .log]
    
    func run() throws {
        switch self {
        case .login: try Login.run()
        case .log:   try Log.run()
        }
    }
}
