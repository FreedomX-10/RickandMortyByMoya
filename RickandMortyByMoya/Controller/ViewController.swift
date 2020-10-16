
import UIKit
import Moya

class ViewController: UIViewController {
  var results = [rickAndMortyData]()
  let callRickAndMorty = apiRickandMorty()
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    callRickAndMorty.testCall{
      data in
      self.results = data
      DispatchQueue.main.async {
        self.tableView.reloadData()
      }
    }
    tableView.dataSource = self
    tableView.delegate = self
  }
}

extension ViewController : UITableViewDataSource,UITableViewDelegate{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return results.count
    
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
    cell.textLabel?.text = results[indexPath.row].name.capitalized
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "showDetails", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? RickViewController {
      destination.Rick = results[(tableView.indexPathForSelectedRow?.row)!]
    }
  }
}

