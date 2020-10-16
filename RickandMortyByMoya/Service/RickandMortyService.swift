
import Foundation
import Moya

enum rickAndMorty {
  case createUser (name:String)
  case readUser
  case updateUser (id:Int, name:String)
}

extension rickAndMorty: TargetType{
  var baseURL: URL {
    return URL(string: "https://rickandmortyapi.com/api/")!
    
  }
  
  var path: String {
    switch self {
    case .readUser,.createUser(_):
      return "character"
    case .updateUser(let id ,_):
      return "users/\(id)"
    }
  }
  
  var method: Moya.Method {
    switch self {
    case .createUser(_):
      return .post
    case .readUser:
      return .get
    case .updateUser(_):
      return .put
    }
  }
  
  var sampleData: Data {
    return Data()
  }
  
  var task: Task {
    return .requestPlain
  }
  
  var headers: [String : String]? {
    return ["Content-Typer":"application/json"]
  }
  
  
}
