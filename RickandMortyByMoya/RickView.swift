
import UIKit
import SnapKit
import Kingfisher
import Moya

// MARK: Waiting
class RickView: UIView {
  var Rick :rickAndMortyData?
  
  func setUp() {
    
    //        section call UI
    let imageView = UIImageView()
    let nameView = UILabel()
    
    //----------------------------------------------------------------------------------
    
    
    
    //        section do somthing with data
    imageView.kf.setImage(with: URL(string: Rick!.image))
    nameView.text = "Name: " + (Rick?.name)!
    
    
    //----------------------------------------------------------------------------------
    
    //        section manage View
    addSubview(imageView)
    imageView.snp.makeConstraints{
      make in
      make.width.equalTo(300)
      make.height.equalTo(300)
      make.left.equalTo((414-300)/2)
      make.top.equalTo(100)
      
    }
    
    addSubview(nameView)
    nameView.font = nameView.font.withSize(40)
    nameView.snp.makeConstraints{
      make in
      make.width.equalTo(414)
      make.height.equalTo(50)
      make.top.equalTo(imageView.snp.bottom).offset(50)
    }
    
    
    //----------------------------------------------------------------------------------
    
  }
  
  
  
}
