let unitForRecipeGramme = document.getElementById("ingredient_unit_for_recipe_gramme");
let unitForRecipeKilo = document.getElementById("ingredient_unit_for_recipe_kilogramme");
let unitForRecipeCentL = document.getElementById("ingredient_unit_for_recipe_centilitre");
let unitForRecipeLitre = document.getElementById("ingredient_unit_for_recipe_litre");
let unitOfOrderGramme = document.getElementById("ingredient_unit_of_order_gramme");
let unitOfOrderKilo = document.getElementById("ingredient_unit_of_order_kilogramme");
let unitOfOrderCentL = document.getElementById("ingredient_unit_of_order_centilitre");
let unitOfOrderLitre = document.getElementById("ingredient_unit_of_order_litre");


unitForRecipeGramme.addEventListener('click', (event) => {
  unitOfOrderCentL.setAttribute("disabled", "");
  unitOfOrderLitre.setAttribute("disabled", "");
})
console.log(unitForRecipeGramme);
