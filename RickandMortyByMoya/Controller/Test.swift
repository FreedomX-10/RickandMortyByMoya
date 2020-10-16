import UIKit
import PureLayout

class ProfileView: UIView {
  var shouldSetupConstraints = true
  
  var bannerView: UIImageView!
  var profileView: UIImageView!
  var segmentedControl: UISegmentedControl!
  
  let screenSize = UIScreen.main.bounds
  
  override init(frame: CGRect){
    super.init(frame: frame)
    
    bannerView = UIImageView(frame: CGRect.zero)
    bannerView.backgroundColor = UIColor.gray
    
    bannerView.autoSetDimension(.height, toSize: screenSize.width / 3)
    
    self.addSubview(bannerView)
    
    profileView = UIImageView(frame: CGRect.zero)
    profileView.backgroundColor = UIColor.gray
    profileView.layer.borderColor = UIColor.white.cgColor
    profileView.layer.borderWidth = 1.0
    profileView.layer.cornerRadius = 5.0
    
    profileView.autoSetDimension(.width, toSize: 124.0)
    profileView.autoSetDimension(.height, toSize: 124.0)
    
    self.addSubview(profileView)
    
    segmentedControl = UISegmentedControl(items: ["Tweets", "Media", "Likes"])
    
    self.addSubview(segmentedControl)
  }
}
