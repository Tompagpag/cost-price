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

unitForRecipeGramme.addEventListener('change', () => {
  unitOfOrderCentL.toggleAttribute("disabled");
  unitOfOrderLitre.toggleAttribute("disabled");
})
console.log(unitForRecipeGramme);
