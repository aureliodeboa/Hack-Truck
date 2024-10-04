import Foundation
class ViewModel : ObservableObject{
    @Published var recipe: [Receita] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/leituraGet")!){
            data, _,error in
            do{
                self.recipe = try JSONDecoder().decode([Receita].self, from : data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
}
