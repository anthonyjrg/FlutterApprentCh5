import 'package:flutter/material.dart';

import '../models/models.dart';
import '../components/components.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({Key key, this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top:16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day',
            style: Theme.of(context).textTheme.headline1
          ),
          const SizedBox(height: 16),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              itemCount: recipes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index){
                return const SizedBox(height: 16);
              },
            )
          )
        ],
      )
    );
  }

  Widget buildCard(ExploreRecipe recipe){

  }
}
