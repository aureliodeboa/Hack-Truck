import Foundation

struct HaPo: Decodable, Identifiable {
    let id: String
    let name: String?
    let alternateNames: [String]?
    let species: String?
    let gender: String?
    let image: String?
    let house: String?
    let dateOfBirth: String?
    /* let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let hairColour: String?
    let wand: Wand
    let patronus: String?
    let hogwartsStudent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternateActors: [String]?
    let alive: Bool?
 
    */

   
}
struct Wand: Codable {
    let wood: String?
    let core: String?
    let length: Int?
}
