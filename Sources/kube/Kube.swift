
import Commandy

enum Kube: String, Commandy.Cli {
    
    case login
    case log
    case config
    
    static var allCases: [Kube] = [.login, .log, .config]
    
    func run() throws {
        switch self {
        case .login:  try Login.run()
        case .log:    try Log.run()
        case .config: try Config.run()
        }
    }
}
