PGPASSWORD=Ge3djNyxCk3IQF4313nbGym1rHrCshbj psql -h dpg-clpfua1oh6hc73c2l690-a.oregon-postgres.render.com -U myrecipes_9lhm_user myrecipes_9lhm
INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (1, 1)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (1, 2)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (1, 3)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (1, 4)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (1, 5)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (1, 6)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (1, 7)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (2, 1)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (2, 8)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (2, 9)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (2, 3)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (2, 4)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (2, 10)

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
VALUES (2, 11)


INSERT INTO ingredientinrecipe (recipeId, ingredientId)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b
ON a.recipeName = 'Pumpkin Tartlets' AND b.ingredientName = 'brown sugar';

INSERT INTO ingredientinrecipe (recipeId, ingredientId)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientName = 'Egg wash (1 egg beaten with a splash of milk)';

SELECT a.recipeName, b.ingredientName FROM recipe a
INNER JOIN IngredientInRecipe c
ON a.id = c.recipeId
INNER JOIN ingredient b
ON b.id = c.ingredientId;

DELETE FROM ingredientinrecipe
WHERE id IN (15);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES
  (3, 1),
  (3, 1),
  (3, 13),
  (3, 14),
  (3, 15),
  (3, 16);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 3);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 4);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'cloves';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'Pastry dough';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'Egg wash (1 egg beaten with a splash of milk)';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Tartlets' AND b.ingredientname = 'pumpkin puree';

SELECT a.recipeName, b.ingredientName FROM recipe a
INNER JOIN IngredientInRecipe c
ON a.id = c.recipeId
INNER JOIN ingredient b
ON b.id = c.ingredientId;



UPDATE recipe
SET instructions = 
    '<br>Mix pumpkin puree, sugar, and spices in a bowl.
    <br>Roll out the pastry dough and cut it into small circles.
    <br>Fold the dough over to create a half-moon shape and crimp the edges with a fork.
    <br>Brush the pasties with egg wash.
    <br>Bake at 375°F (190°C) for 20-25 minutes or until golden brown.'
WHERE id = 1;