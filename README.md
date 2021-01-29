### Présentation du projet
**Market-reviews** est une application CRUD qui recence les avis des clients sur les differents site d'e-Commerce.

Chaque client peut laisser un avis sur un site marchand.

----
### Equipe et répartition

* Ihcen Borgi
**Rôle** : Initialisation du projet, développement back-office, modélisation base de données, déploiement sur Heroku.

* Younes Azize
**Rôle** : Jeu de données Seed, développement front-office React.js, test JsonAPI.


----
### Problème survenue

Reinisialisation d'un nouveau projet suite a une perte du travail déjà fait (front + espace connexion)


----

### Technologie
L'application CRUD a été developpé en Ruby on Rails et en React.js utilisant Webpacker.

L'application utilise aussi:

* Ruby version: `3.0.0`
* Database: `postgresql`



----
                    
### Tables
                    
Enseigne  | Avis
------------- | -------------
nom :string | titre :string
label :string| description :string
image :string| score :integer
  | belongs_to :enseigne

*belongs_to : Relie la table Enseigne*

----

### Liste Gem#
* fast_jsonapi 



----

### Seeds#
Un jeu de données a été généré. Pour l'importer, executez :
-  `rails db:seed`

```ruby
enseignes = Enseigne.create([
    { 
      name: "Amazon",
      image: "https://pngimg.com/uploads/amazon/amazon_PNG6.png"
    }, 
    { 
      name: "Cdiscount",
      image: "https://www.laprovence.com/media/2020/10/16/1602840945_cdiscount.png"
    },
    { 
      name: "Conforama",
      image: "https://sport-index.fr/wp-content/uploads/2019/04/CONFORAMA-logo-300-slogan.png" 
    }, 
    { 
      name: "Darty",
      image: "https://logos-marques.com/wp-content/uploads/2020/02/Darty-logo.png" 
    }, 
    { 
      name: "Fnac",
      image: "https://assets.stickpng.com/images/5a32b7cacb9a85480a628fa7.png" 
    }, 
    { 
      name: "Apple Store",
      image: "https://assets.stickpng.com/images/580b57fcd9996e24bc43c516.png" 
    }
  ])

  avis = Avi.create([
    { 
      titre: 'Parfait', 
      description: 'Respect des gestes barrières avec le livreur', 
      score: 4, 
      enseigne: enseignes.first 
    },
    { 
      titre: 'Livraison Rapide', 
      description: 'Commande passé la veille de la livraison, rien a dire.', 
      score: 5, 
      enseigne: enseignes.first 
    },
    { 
        titre: 'Au Top !', 
        description: 'Merci.', 
        score: 5, 
        enseigne: enseignes.first 
    },
    { 
        titre: 'Bon SAV', 
        description: 'SAV au rdv, livraison rapide.', 
        score: 3, 
        enseigne: enseignes.first 
    },
  ])
  ```

```