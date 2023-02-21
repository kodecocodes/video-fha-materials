// Copyright (c) 2023 Kodeco LLC

// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom
// the Software is furnished to do so, subject to the following
// conditions:

// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.

// Notwithstanding the foregoing, you may not use, copy, modify,
// merge, publish, distribute, sublicense, create a derivative work,
// and/or sell copies of the Software in any work that is designed,
// intended, or marketed for pedagogical or instructional purposes
// related to programming, coding, application development, or
// information technology. Permission for such use, copying,
// modification, merger, publication, distribution, sublicensing,
// creation of derivative works, or sale is expressly withheld.

// This project and source code may use libraries or frameworks
// that are released under various Open-Source licenses. Use of
// those libraries and frameworks are governed by their own
// individual licenses.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

class Recipe {
  final String name;
  final String imagePath;
  final String description;
  final List<Ingredient> ingredients;

  Recipe({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.ingredients,
  });
}

class Ingredient {
  final String name;
  final String quantity;
  final String imagePath;

  Ingredient({
    required this.name,
    required this.quantity,
    required this.imagePath,
  });
}

List<Recipe> recipes = [
  Recipe(
    name: 'Tikka Chicken Pizza',
    description: 'A touch of Italian Mozarella Cheese crust',
    imagePath: 'assets/images/pizza.png',
    ingredients: [
      Ingredient(
        name: 'Oatmeal',
        quantity: '1/2 c.',
        imagePath: 'assets/images/oatmeal.jpg',
      ),
      Ingredient(
        name: 'Walnuts',
        quantity: '1/2 tbsp.',
        imagePath: 'assets/images/walnut.jpg',
      ),
      Ingredient(
        name: 'Berries',
        quantity: '1/2 tbsp.',
        imagePath: 'assets/images/berries.jpg',
      ),
    ],
  ),
  Recipe(
    name: 'Burger Classico',
    description: 'Vegatarian burger for an amazing delight',
    imagePath: 'assets/images/hamburger.png',
    ingredients: [
      Ingredient(
        name: 'Ham',
        quantity: '1/2 c.',
        imagePath: 'assets/images/oatmeal.jpg',
      ),
      Ingredient(
        name: 'Ketchup',
        quantity: '2 tbsp.',
        imagePath: 'assets/images/walnut.jpg',
      ),
      Ingredient(
        name: 'Mayonnaise',
        quantity: '3 tbsp.',
        imagePath: 'assets/images/berries.jpg',
      ),
    ],
  )
];
