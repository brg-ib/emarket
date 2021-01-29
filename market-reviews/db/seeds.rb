# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
        description: 'Livraison rapide en 1 jour', 
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