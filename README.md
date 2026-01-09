# JobConnect 📱

Application mobile de recrutement permettant la mise en relation entre entreprises et candidats.

## 🎯 Fonctionnalités

### 👤 Rôle Employee (Candidat)

- ✅ Consulter la liste des offres d'emploi avec filtres (type de contrat, expérience, localisation, salaire)
- ✅ Consulter le détail d'une offre (description, compétences, salaire, localisation, informations entreprise)
- ✅ Postuler à une offre (upload de CV en PDF)
- ✅ Historique des candidatures avec statuts (Envoyée, En cours d'étude, Acceptée, Refusée)
- ✅ Gestion du profil (informations personnelles, parcours professionnel, compétences, CV, photo de profil)

### 🏢 Rôle Company (Entreprise)

- ✅ Publier une offre d'emploi (titre, description, compétences, salaire, type de contrat, localisation, date limite)
- ✅ Consulter la liste de ses offres publiées avec statistiques (nombre de candidats, date de création, statut)
- ✅ Consulter les candidats d'une offre
- ✅ Voir le profil détaillé du candidat (CV, compétences, expériences, informations de contact)
- ✅ Gestion du profil entreprise (logo, adresse, description, domaine, taille)

### 🔐 Fonctionnalités Transversales

- ✅ Authentification (Inscription/Connexion)
- ✅ Détection automatique du rôle (Company/Employee) après login
- ✅ Interface moderne et intuitive avec navigation par onglets
- ✅ Photo de profil / Logo entreprise

## 🚀 Installation

### Prérequis

- Flutter SDK (>=3.0.0)
- Dart SDK
- Un éditeur de code (VS Code, Android Studio, etc.)

### Étapes d'installation

1. Clonez le repository ou téléchargez le projet
2. Installez les dépendances :
   ```bash
   flutter pub get
   ```
3. Lancez l'application :
   ```bash
   flutter run
   ```

## 📦 Dépendances principales

- `provider` : Gestion d'état
- `http` : Appels API (à configurer avec votre backend)
- `shared_preferences` : Stockage local
- `image_picker` : Sélection d'images
- `file_picker` : Sélection de fichiers (CV)
- `intl` : Formatage de dates
- `flutter_svg` : Support SVG

## 🏗️ Structure du projet

```
lib/
├── main.dart                 # Point d'entrée de l'application
├── models/                   # Modèles de données
│   ├── user_model.dart
│   ├── job_model.dart
│   └── application_model.dart
├── providers/                # Providers (gestion d'état)
│   └── auth_provider.dart
├── screens/                  # Écrans de l'application
│   ├── auth/                 # Authentification
│   │   ├── login_screen.dart
│   │   └── register_screen.dart
│   ├── employee/             # Écrans Candidat
│   │   ├── employee_home.dart
│   │   ├── job_list_screen.dart
│   │   ├── job_detail_screen.dart
│   │   ├── job_filters_sheet.dart
│   │   ├── apply_job_screen.dart
│   │   ├── application_history_screen.dart
│   │   └── employee_profile_screen.dart
│   └── company/               # Écrans Entreprise
│       ├── company_home.dart
│       ├── publish_job_screen.dart
│       ├── my_jobs_screen.dart
│       ├── job_candidates_screen.dart
│       ├── candidates_screen.dart
│       ├── candidate_detail_screen.dart
│       └── company_profile_screen.dart
├── services/                 # Services (API, etc.)
│   └── job_service.dart
└── utils/                    # Utilitaires
    └── app_theme.dart
```

## 🔌 Intégration Backend

L'application est maintenant intégrée avec le backend NestJS + MongoDB fourni.

### Lancer le backend

1. **Cloner le repository backend** (si pas déjà fait) :
   ```bash
   git clone https://github.com/MohamedFawziAbdellaoui/recruitment-app-backend.git
   cd recruitment-app-backend
   ```

2. **Lancer le backend avec Docker** :
   ```bash
   docker-compose up -d
   ```
   
   Le backend sera disponible sur : `http://localhost:3000`
   MongoDB sera lancé automatiquement sur le port `27017`

3. **Vérifier que le backend fonctionne** :
   - Ouvrez `http://localhost:3000` dans votre navigateur
   - Vous devriez voir une réponse du serveur

### Configuration

L'URL de base de l'API est configurée dans `lib/services/api_service.dart` :
```dart
static const String baseUrl = 'http://localhost:3000';
```

Pour changer l'URL (par exemple pour un appareil mobile), modifiez cette constante.

### Authentification

L'application utilise JWT pour l'authentification. Les tokens sont automatiquement :
- Sauvegardés après login/signup
- Inclus dans les headers de toutes les requêtes authentifiées
- Supprimés lors de la déconnexion

## 🎨 Personnalisation

Le thème de l'application peut être personnalisé dans `lib/utils/app_theme.dart`. Vous pouvez modifier :
- Les couleurs principales
- Les styles de texte
- Les formes des composants
- Etc.

## 📱 Test

Pour tester l'application :

1. **Assurez-vous que le backend est lancé** (voir section "Intégration Backend")
2. **Créez un compte Candidat** :
   - Sélectionnez "Candidat" lors de l'inscription
   - Le backend utilisera le type "employee"
3. **Créez un compte Entreprise** :
   - Sélectionnez "Entreprise" lors de l'inscription
   - Le backend utilisera le type "entreprise"

## 🔮 Améliorations futures

- [x] Intégration complète avec un backend REST API
- [ ] Notifications push
- [ ] Recherche avancée d'offres
- [ ] Chat entre candidats et entreprises
- [ ] Système de favoris
- [ ] Recommandations d'offres personnalisées
- [ ] Support multilingue
- [ ] Mode sombre

## 📄 Licence

Ce projet est un exemple d'application de recrutement développée avec Flutter.

## 👨‍💻 Développement

Pour contribuer au projet :
1. Fork le repository
2. Créez une branche pour votre fonctionnalité
3. Committez vos changements
4. Poussez vers la branche
5. Ouvrez une Pull Request

---

Développé avec ❤️ par Ilyes Bahloul en Flutter


