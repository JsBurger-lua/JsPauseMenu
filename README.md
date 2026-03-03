# 🎮 JsPauseMenu | ESX & QB-Core**

A lightweight and optimized FiveM pause menu customization with Discord Rich Presence integration.

Compatible with ESX and QB-Core frameworks.
---
## 🇬🇧 English

### ✨ Features

- Custom Pause Menu Header
- Dynamic Player ID display
- Online Player Counter
- Custom HUD Colors
- Discord Rich Presence Integration
- Optimized (no Wait(0) performance drain)
- ESX / QB-Core Compatible
- Easy configuration

### 📦 Installation

1. Place the folder in your resources directory.
2. Add this to your server.cfg : ensure JsPauseMenu

- Configure the config.lua file to match your framework information and server color.

### ⚙️ Configuration

- Config.Framework = "ESX" -- or "QB-Core"

- Config.ServerName = "JsBurger"

- Config.MaxPlayers = 2048
#### You can modify:

     Config.HUD = {
      LINE = {41, 49, 165, 255}, --> Modify the bar and settings areas
      STYLE = {0, 1, 17, 180},  --> Modify the buttons / interfaces 
      WAYPOINT = {0, 17, 255, 240} --> Point on the maps
     } 

#### HUD Color Reference:
- https://docs.fivem.net/docs/game-references/hud-colors/

#### Discord Rich Presence Setup

- Go to: https://discord.com/developers/applications

- Create a new application

- Copy your Application ID

- Add Rich Presence images in "Art Assets"

      Config.Discord = {
          AppId = 1473823197232107732,
          Invite = "https://discord.gg/yourlink",
          LargeAsset = "grand_logo",
          SmallAsset = "petit_logo"
      }
      
#### 🚀 Performance

- This script uses optimized loops (Wait(300) and Wait(60000))
- No frame-based Wait(0) loops.

##### Low CPU usage.

---
## 🇫🇷 Francais

### ✨ Caractéristiques

- Menu echap custom 
- Affichage dynamique de l'ID du joueur
- Compteur de joueurs en direct
- Couleurs du HUD personnalisées
- Discord Rich Presence Integration
- Optimisé (pas de perte de performance liée à Wait(0))
- ESX / QB-Core Compatible
- Configuration facile

### 📦 Installation

1. Placez le dossier dans votre répertoire de ressources.
2. Ajoutez ceci à votre fichier server.cfg : assurez-vous que JsPauseMenu

- Configurez le fichier config.lua pour qu'il corresponde aux informations de votre framework et à la couleur de votre serveur.

### ⚙️ Configuration

- Config.Framework = "ESX" -- or "QB-Core"

- Config.ServerName = "JsBurger"

- Config.MaxPlayers = 2048
#### Vous pouvez modifier :

     Config.HUD = {
      LINE = {41, 49, 165, 255}, --> Modify the bar and settings areas
      STYLE = {0, 1, 17, 180},  --> Modify the buttons / interfaces 
      WAYPOINT = {0, 17, 255, 240} --> Point on the maps
     } 

#### Référence des couleurs du HUD :
- https://docs.fivem.net/docs/game-references/hud-colors/

#### Discord Rich Presence Setup

- Aller sur : https://discord.com/developers/applications

- Créer une nouvelle application

- Copiez votre Application ID

- Ajouter votre images Rich Presence dans « Ressources artistiques »

      Config.Discord = {
          AppId = 1473823197232107732,
          Invite = "https://discord.gg/yourlink",
          LargeAsset = "grand_logo",
          SmallAsset = "petit_logo"
      }
      
#### 🚀 Performance

- Ce script utilise des boucles optimisées (Wait(300) et Wait(60000)).
- Pas de boucles Wait(0) = no lags.

##### Faible utilisation du processeur.

#### ❤️ Credits
- Developed by JsBurger
