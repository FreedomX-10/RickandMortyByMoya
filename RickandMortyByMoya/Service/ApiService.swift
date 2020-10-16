
import Foundation
import Moya

struct apiRickandMorty {
  
  func testCall (comp: @escaping ([rickAndMortyData]) -> ()) {
    
    
    let rickAndMortyProvider = MoyaProvider<rickAndMorty>()
    
    rickAndMortyProvider.request(.readUser) {(result) in
      
      switch result {
      case .success(let response):
//        let json = try! JSONSerialization.jsonObject(with: response.data)
//        print(json)
        let json = try! JSONDecoder().decode(rickData.self, from: response.data)
        comp(json.results)
  
        
      case .failure(let error):
        print(error.localizedDescription)
        
        
      }
    }
  }
}
