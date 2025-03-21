# Nuxt Starter - SAE

Pour rappel, la [documentation de Nuxt](https://nuxt.com/docs/getting-started/introduction) n'est pas loin
en cas de doute.

Ce projet contient un squelette minimal avec NuxtJS et Pinia pour la gestion d'état.

Selon vos préférences, vous pouvez y ajouter un framework UI tel que Vuetify pour simplifier l'écriture de
vos interfaces.

## Installation et lancement

Installez les dépendances via NPM :

```bash
npm install
```

Puis lancez le serveur de développement (accessible via http://localhost:3000) :

```bash
npm run dev
```

Pour obtenir un serveur de développement/URL accessible en dehors de localhost, notamment
pour interagir avec l'application Flutter, utilisez :

```bash
npm run dev-public
```

Le serveur sera alors accessible depuis votre IP réseau. Si vous avez besoin d'un accès à distance (vous
n'êtes pas sur le même réseau local que les personnes réalisant l'application mobile), utilisez en complément
le [système Ngrok](https://ngrok.com/). Il suffit de vous créer un compte, puis d'installer l'outil ngrok pour
créer un pont vers votre port HTTP de Nuxt.

