enum ServiceEndpoints {
  getAllCharacter,
  getCharacterById,
  getAllStudent,
  getAllStaff,
  getCharactersInHouse,
  getAllSpell,
}

extension ServiceEndpointsExtension on ServiceEndpoints {
  String get getEndpoint {
    switch (this) {
      case ServiceEndpoints.getAllCharacter:
        return "/characters";
      case ServiceEndpoints.getCharacterById:
        return "/character/";
      case ServiceEndpoints.getAllStudent:
        return "/characters/students";
      case ServiceEndpoints.getAllStaff:
        return "/characters/staff";
      case ServiceEndpoints.getCharactersInHouse:
        return "/characters/house/";
      case ServiceEndpoints.getAllSpell:
        return "/spells";
    }
  }
}
