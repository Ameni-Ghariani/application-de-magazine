class User {
  static const String PassionCuisine = 'cuisine';
  static const String PassionMusique = 'musique';
  static const String PassionVoyage = 'voyage';

  String prenom = '';
  String nom = '';
  Map<String, bool> passions = {
    PassionCuisine: false,
    PassionMusique: false,
    PassionVoyage: false
  };
  bool bulletin = false;

  save() {
    print('enregistrement des informations grâce à un service Web');
  }
}
