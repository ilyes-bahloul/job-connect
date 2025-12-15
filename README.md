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

L'application utilise actuellement des données mockées dans `lib/services/job_service.dart`. Pour connecter à votre backend :

1. Modifiez `lib/services/job_service.dart` pour remplacer les fonctions mockées par de vrais appels API
2. Configurez l'URL de base de votre API
3. Ajoutez la gestion des tokens d'authentification si nécessaire
4. Implémentez l'upload de fichiers (CV, photos) vers votre serveur

## 🎨 Personnalisation

Le thème de l'application peut être personnalisé dans `lib/utils/app_theme.dart`. Vous pouvez modifier :
- Les couleurs principales
- Les styles de texte
- Les formes des composants
- Etc.

## 📱 Test

Pour tester l'application :

1. **Compte Candidat** : Utilisez un email qui ne contient pas "@company.com"
2. **Compte Entreprise** : Utilisez un email contenant "@company.com"

## 🔮 Améliorations futures

- [ ] Intégration complète avec un backend REST API
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

Développé avec ❤️ en Flutter

