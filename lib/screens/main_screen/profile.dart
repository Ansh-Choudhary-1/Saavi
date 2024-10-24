import 'package:flutter/material.dart';
import 'package:saavi/pallete/colors_pallete.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height / 3.5,
          width: double.maxFinite,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.9, 0.1],
            colors: [
              ColorsPallete.primary,
              Colors.white,
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'My Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://i.imgur.com/6Mx5C9S.jpg')),
                        const SizedBox(width: 10),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hel Cracker',
                              style: TextStyle(
                                color: Color(0xFF232323),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            Text(
                              'helcracker40@gmail.com',
                              style: TextStyle(
                                color: Color(0xFF80869A),
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          flex: 1,
                          child: IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
