
import Commandy

enum Kube: String, Commandy.Cli {
    
    case login
    
    static var allCases: [Kube] = [.login]
    
    func run() throws {
        switch self {
        case .login: try Login.run()
        }
    }
}
