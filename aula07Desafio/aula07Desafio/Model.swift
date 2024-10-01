import Foundation

// Modelo para a resposta da API
struct Response: Decodable, Hashable {
    let status: Int
    let data: [Agent]
}

// Modelo para o agente
struct Agent: Decodable, Hashable {
    let uuid: String
    let displayName: String?
    let description: String?
    let developerName: String?
    let characterTags: [String]?
    let displayIcon: String?
    let displayIconSmall: String?
    let bustPortrait: String?
    let fullPortrait: String?
    let fullPortraitV2: String?
    let killfeedPortrait: String?
    let background: String?
    let backgroundGradientColors: [String]?
    let assetPath: String?
    let isFullPortraitRightFacing: Bool?
    let isPlayableCharacter: Bool?
    let isAvailableForTest: Bool?
    let isBaseContent: Bool?
    let role: Role?
    let recruitmentData: RecruitmentData? // Alterado para o novo tipo
    let abilities: [Ability]?
    let voiceLine: String?
}

// Modelo para o papel do agente
struct Role: Codable, Hashable {
    let uuid: String
    let displayName: String?
    let description: String?
    let displayIcon: String?
    let assetPath: String?
}

// Modelo para os dados de recrutamento
struct RecruitmentData: Codable, Hashable {
    let someField: String? // Exemplo de campo, altere conforme sua estrutura
    // Adicione outros campos conforme necessário
}

// Modelo para as habilidades do agente
struct Ability: Codable, Hashable {
    let slot: String?
    let displayName: String?
    let description: String?
    let displayIcon: String?
}
