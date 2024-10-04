import Foundation

struct Receita: Identifiable, Codable {
    var id: String { _id }
    let _id: String
    let nome: String
    let imagem: String
    let descricao: String
    let modoDePreparo: [String]
}

extension Receita {
    static func fromData(data: [String: Any]) -> Receita? {
        guard let id = data["_id"] as? String,
              let nome = data["nome"] as? String,
              let imagem = data["imagem"] as? String,
              let descricao = data["descricao"] as? String,
              let modoDePreparo = data["modoDePreparo"] as? [String] else {
            return nil
        }
        return Receita(_id: id, nome: nome, imagem: imagem, descricao: descricao, modoDePreparo: modoDePreparo)
    }
}
