# Template Symfony 7 + React

Ce projet est un template prêt à l’emploi pour développer une API Symfony 7 et un frontend React, orchestrés avec Docker et une base de données PostgreSQL.

## Fonctionnalités
- API backend avec Symfony 7
- Frontend moderne avec React + Vite
- Base de données PostgreSQL
- Orchestration complète via Docker Compose
- Hot reload pour le développement

## Prérequis
- [Docker](https://www.docker.com/) et [Docker Compose](https://docs.docker.com/compose/)
- (Optionnel) Git pour le versionnement

## Installation & Démarrage

1. **Cloner le projet**
   ```bash
   git clone https://github.com/votre-utilisateur/votre-repo.git
   cd template-sf7-react
   ```

2. **Lancer les services Docker**
   ```bash
   docker-compose up --build
   ```

3. **Accéder aux applications**
   - API Symfony : [http://localhost:8000](http://localhost:8000)
   - Frontend React : [http://localhost:3000](http://localhost:3000)

## Structure du projet
```
├── backend (API Symfony)
├── frontend (React)
├── docker-compose.yaml
├── Dockerfile.backend
├── frontend/Dockerfile.frontend
├── migrations
├── public
├── src
├── templates
├── tests
└── ...
```

## Outils de cleancode

### Backend (Symfony / PHP)
- **PHPStan** : Analyse statique du code PHP pour détecter les erreurs et améliorer la qualité.
- **PHPUnit** : Framework de tests unitaires pour PHP.

### Frontend (React / JS/TS)
- **ESLint** : Linter pour JavaScript/TypeScript afin d’assurer la qualité et la cohérence du code.
- **Prettier** : Formateur de code pour garantir un style uniforme.
- **TypeScript** : Typage statique pour sécuriser le code JS.

Tous ces outils sont installés et exécutés automatiquement lors du build et du démarrage des conteneurs Docker.

## Commandes utiles

> Les commandes suivantes sont automatisées par Docker : vous n’avez pas besoin de les lancer manuellement.

- Installation des dépendances backend : `composer install`
- Installation des dépendances frontend : `npm install` (dans le dossier frontend)
- Analyse statique PHP : `php vendor/bin/phpstan analyse src`
- Linter JS/TS : `npx eslint src/`
- Formatage du code JS/TS : `npx prettier --check src/`
- Lancer les tests Symfony : `php bin/phpunit`
- Lancer le serveur React localement : `npm run dev` (dans frontend)

## Commandes Makefile

Voici les principales commandes disponibles via le Makefile :

| Commande             | Description                                                        |
|----------------------|--------------------------------------------------------------------|
| `make up`            | Démarre les services Docker en arrière-plan                        |
| `make build`         | Reconstruit et démarre les services Docker                         |
| `make down`          | Arrête et supprime les conteneurs Docker                           |
| `make restart`       | Redémarre les services Docker avec reconstruction                  |
| `make backend-bash`  | Ouvre un shell bash dans le conteneur backend                      |
| `make frontend-bash` | Ouvre un shell sh dans le conteneur frontend                      |
| `make migrate`       | Exécute les migrations Doctrine                                    |
| `make fixtures`      | Charge les fixtures Doctrine                                       |
| `make clear`         | Vide le cache Symfony                                              |
| `make validate-db`   | Valide la base de données Doctrine                                 |
| `make create-db`     | Crée la base de données Doctrine                                   |
| `make psql`          | Ouvre un shell psql dans le conteneur database                     |
| `make phpstan`       | Analyse statique du code PHP (backend)                             |
| `make phpunit`       | Exécute les tests unitaires Symfony (backend)                      |
| `make eslint`        | Linter JS/TS (frontend)                                            |
| `make prettier`      | Vérifie le formatage JS/TS (frontend)                              |
| `make typecheck`     | Vérifie le typage TypeScript (frontend)                            |
| `make frontend-install`| Installe les dépendances npm du frontend                        |
| `make frontend-build`| Build le frontend React                                            |
| `make frontend-dev`  | Lance le serveur de développement React                            |
