import 'dart:ui';

class Ingredient {
  const Ingredient(
      this.image,
      this.imageUnit,
      this.positions
      );
  final String image;
  final String imageUnit;
  final List<Offset> positions;

  bool compare(Ingredient ingredient) => ingredient.image == image;
}

final ingredients = const <Ingredient>[
  Ingredient(
    'assets/images/part1/chili.png',
    'assets/images/part2/chili_unit.png',
    <Offset>[
      Offset(0.2, 0.2),
      Offset(0.6, 0.2),
      Offset(0.4, 0.25),
      Offset(0.5, 0.3),
      Offset(0.4, 0.65),
    ],
  ),
  Ingredient('assets/images/part1/garlic.png',
    'assets/images/part2/mushroom_unit.png',
    <Offset>[
      Offset(0.2, 0.35),
      Offset(0.65, 0.35),
      Offset(0.3, 0.23),
      Offset(0.5, 0.2),
      Offset(0.3, 0.5),
    ],
  ),
  Ingredient('assets/images/part1/olive.png',
    'assets/images/part2/olive_unit.png',

  <Offset>[
    Offset(0.25, 0.5),
    Offset(0.4, 0.4),
    Offset(0.2, 0.3),
    Offset(0.4, 0.2),
    Offset(0.2, 0.45),
  ],
  ),
  Ingredient('assets/images/part1/onion.png',
    'assets/images/part2/onion.png',

  <Offset>[
    Offset(0.2, 0.65),
    Offset(0.65, 0.3),
    Offset(0.25, 0.25),
    Offset(0.45, 0.35),
    Offset(0.4, 0.65),
  ],
  ),
  Ingredient('assets/images/part1/pea.png',
    'assets/images/part2/pea_unit.png',

    <Offset>[
      Offset(0.2, 0.35),
      Offset(0.65, 0.35),
      Offset(0.3, 0.23),
      Offset(0.5, 0.2),
      Offset(0.3, 0.5),
    ],
  ),
  Ingredient('assets/images/part1/pickle.png',
    'assets/images/part2/pickle_unit.png',

    <Offset>[
      Offset(0.2, 0.65),
      Offset(0.65, 0.3),
      Offset(0.25, 0.25),
      Offset(0.45, 0.35),
      Offset(0.4, 0.65),
    ],
  ),
  Ingredient('assets/images/part1/potato.png',
    'assets/images/part2/potato_unit.png',

  <Offset>[
    Offset(0.2, 0.2),
    Offset(0.6, 0.2),
    Offset(0.4, 0.25),
    Offset(0.5, 0.3),
    Offset(0.4, 0.65),
  ],
  ),
];