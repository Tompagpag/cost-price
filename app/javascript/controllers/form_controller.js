// Get all the ids of units

let unitForRecipeGramme = document.getElementById("ingredient_unit_for_recipe_gramme");
let unitForRecipeKilo = document.getElementById("ingredient_unit_for_recipe_kilogramme");
let unitForRecipeCentL = document.getElementById("ingredient_unit_for_recipe_centilitre");
let unitForRecipeLitre = document.getElementById("ingredient_unit_for_recipe_litre");
let unitOfOrderGramme = document.getElementById("ingredient_unit_of_order_gramme");
let unitOfOrderKilo = document.getElementById("ingredient_unit_of_order_kilogramme");
let unitOfOrderCentL = document.getElementById("ingredient_unit_of_order_centilitre");
let unitOfOrderLitre = document.getElementById("ingredient_unit_of_order_litre");

// Listen to the unit for recipe click

unitForRecipeGramme.addEventListener('click', () => {
  if (unitOfOrderCentL.attributes.disabled === undefined) {
    toggleLitreAndCentL();
  }
})
unitForRecipeKilo.addEventListener('click', () => {
  if (unitOfOrderCentL.attributes.disabled === undefined) {
    toggleLitreAndCentL();
  }
})

unitForRecipeCentL.addEventListener('click', () => {
  if (unitOfOrderGramme.attributes.disabled === undefined) {
    toggleKiloAndGramme();
  }
})
unitForRecipeLitre.addEventListener('click', () => {
  if (unitOfOrderGramme.attributes.disabled === undefined) {
    toggleKiloAndGramme();
  }
})

let toggleLitreAndCentL = () => {
  unitOfOrderCentL.setAttribute("disabled", true);
  unitOfOrderLitre.setAttribute("disabled", true);
  unitOfOrderGramme.removeAttribute("disabled");
  unitOfOrderKilo.removeAttribute("disabled");
}

let toggleKiloAndGramme = () => {
  unitOfOrderGramme.setAttribute("disabled", true);
  unitOfOrderKilo.setAttribute("disabled", true);
  unitOfOrderCentL.removeAttribute("disabled");
  unitOfOrderLitre.removeAttribute("disabled");
}
