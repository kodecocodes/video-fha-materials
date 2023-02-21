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

import '../widgets/fade_route.dart';
import 'recipes.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  void _navigateToRecipes(BuildContext context) {
    Navigator.push<void>(
      context,
      FadeRoute(page: const Recipes(), duration: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _padWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 64.0),
              child: Image.asset('assets/images/hamburger.png'),
            ),
          ),
          _padWidget(
            child: _appTitle(context),
          ),
          _padWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: _subTitleText(context),
            ),
          ),
          _padWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: navigationButton(context),
            ),
          ),
        ],
      )),
    );
  }

  Text _subTitleText(BuildContext context) {
    return Text(
      'Get your favorite food and'
      '\ntheir ingredients!!',
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
    );
  }

  Widget navigationButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateToRecipes(context);
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Let\'s Go',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: const Color(0xFFd33946), fontWeight: FontWeight.w600),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: Theme.of(context).textTheme.headlineMedium?.fontSize,
              color: const Color(0xFFd33946),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appTitle(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'FO',
        style: TextStyle(
            fontSize: 36,
            color: Color(0xFFF2AC25),
            fontWeight: FontWeight.w700),
        children: [
          TextSpan(
            text: 'ODer',
            style: TextStyle(
                fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _padWidget({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64.0),
      child: child,
    );
  }
}
