# MiniSocial Smart Contract
MiniSocial est un smart contract simple basé sur Ethereum, écrit en Solidity. Il permet aux utilisateurs de publier et stocker des messages (posts) sur la blockchain, créant ainsi une plateforme sociale décentralisée où chaque message enregistre le contenu et l’adresse de son auteur. Ce contrat est conçu pour être déployé et testé directement dans Remix en utilisant l’environnement Remix VM.

## Vue d’ensemble du Projet
Ce projet implémente un smart contract pour un réseau social de base où les utilisateurs peuvent :
- Publier des messages avec leur adresse Ethereum.
- Consulter des messages individuels par index.
- Compter le nombre total de messages publiés.

## Détails du Contrat
- Nom du fichier : `MiniSocial.sol`
- Langage : Solidity 0.8.0+
- Environnement : Remix VM (pour des tests sans portefeuille ni réseau externe)

## Fonctionnalités du Smart Contract
###### 1. Structure Post : Chaque message contient :
- message (string) : Le contenu du message.
- author (address) : L'adresse Ethereum de l’utilisateur ayant publié le message.
- Tableau dynamique posts : Stocke tous les messages de type Post.

###### 2. Fonctions :
- `publishPost(string memory _message)`: Crée un nouveau message avec le contenu et l'adresse de l'utilisateur (msg.sender), puis l’ajoute au tableau posts.
- `getPost(uint index) public view returns (string memory, address)`: Récupère un message par son index et retourne le contenu et l'adresse de l'auteur.
- `getTotalPosts() public view returns (uint)`: Retourne le nombre total de messages publiés
