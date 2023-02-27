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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/recipe.dart';
import '../widgets/recipe_card.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
    );
  }

  void _navigateOnboarding() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: _navigateOnboarding,
          child: const Icon(
            Icons.arrow_back_ios,
            size: 28,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        title: _appTitle(context),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 24, 8),
            child: Icon(
              FontAwesomeIcons.heart,
              size: 28,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: PageView(
            controller: _pageController,
            physics: const ClampingScrollPhysics(),
            children:
                recipes.map((recipe) => RecipeCard(recipe: recipe)).toList(),
          ),
        ),
      ),
    );
  }

  Widget _appTitle(BuildContext context) {
    return Row(
      children: const [
        Text(
          'FO',
          style: TextStyle(
              fontSize: 36,
              color: Color(0xFFF2AC25),
              fontWeight: FontWeight.w700),
        ),
        Text(
          'ODer',
          style: TextStyle(
              fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
