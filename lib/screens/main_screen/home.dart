import 'package:flutter/material.dart';
import 'package:saavi/pallete/colors_pallete.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/map.png"), fit: BoxFit.cover),
      ),
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    backgroundColor: ColorsPallete.primary,
                    shape: const CircleBorder(),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorsPallete.primary,
                      backgroundImage:
                          const AssetImage("assets/images/sign.png"),
                    ),
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    backgroundColor: ColorsPallete.primary,
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.cell_tower,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ]),
          )),
    ));
  }
}
