
import UIKit
import SnapKit
import Kingfisher
import Moya

class RickViewController: UIViewController {
  
  private let i = 0
  var Rick :rickAndMortyData?
  let lookRickView = RickView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //lookRickView.setUp()
    
    setUp()
// MARK: Use by mainstoryboard
    //      nameView.text = "Name: " + (Rick?.name)!
    //      statusView.text = "Status: " + (Rick?.status)!
    //      speciesView.text = "Species: " + (Rick?.species)!
    //      genderView.text = "Sex: " + (Rick?.gender)!
    //      imageView.kf.setImage(with: URL(string: Rick!.image))
  }
  
  func setUp() {
    let imageView = UIImageView()
    let nameView = UILabel()
    let statusView = UILabel()
    
    imageView.kf.setImage(with: URL(string: Rick!.image))
    nameView.text = "Name: " + (Rick?.name)!
    statusView.text = "Status: " + (Rick?.status)!
    
    self.view.addSubview(imageView)
    imageView.snp.makeConstraints {
      make in
      make.trailing.leading.equalToSuperview().inset(20)
      make.top.equalToSuperview().offset(100)
      
    }
    
    self.view.addSubview(nameView)
    nameView.font = nameView.font.withSize(40)
    nameView.snp.makeConstraints{
      make in
      make.width.equalTo(414)
      make.height.equalTo(50)
      make.top.equalTo(imageView.snp.bottom).offset(50)
    }
    
    self.view.addSubview(statusView)
    statusView.backgroundColor = .blue
    statusView.font = statusView.font.withSize(40)
    statusView.snp.makeConstraints{
      make in
      //      make.width.equalTo(414)
      //      make.height.equalTo(50)
      make.trailing.leading.equalToSuperview().inset(5)
      make.top.equalTo(nameView.snp.bottom).offset(30)
      
      
    }
  }
}








