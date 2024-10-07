import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/providers/meals_provider.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
  difficulty,
}

class FiltersNotifier extends StateNotifier<Map<Filter, dynamic>> {
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
          Filter.difficulty: Complexity.all,
        });

  void setFilters(Map<Filter, dynamic> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, dynamic value) {
    // state[filter] = isActive; // not allowed! => mutating state
    state = {
      ...state,
      filter: value,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, dynamic>>(
  (ref) => FiltersNotifier(),
);

final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);
  final selectedDifficulty = activeFilters[Filter.difficulty] as Complexity;

  return meals.where((meal) {
    if (activeFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
      return false;
    }
    if (activeFilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
      return false;
    }
    if (activeFilters[Filter.vegetarian]! && !meal.isVegetarian) {
      return false;
    }
    if (activeFilters[Filter.vegan]! && !meal.isVegan) {
      return false;
    }
    if (selectedDifficulty != Complexity.all &&
        meal.complexity != selectedDifficulty) {
      return false;
    }
    return true;
  }).toList();
});
