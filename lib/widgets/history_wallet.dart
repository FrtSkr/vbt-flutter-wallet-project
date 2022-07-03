import 'package:flutter/material.dart';
import 'package:flutter_wallet_project/animation/fade_animation.dart';

class HistoryWallet extends StatelessWidget {
  final String title;
  final String image;
  final String day;
  final String time;
  final String money;
  final bool isPositive;

  const HistoryWallet(
      {Key? key,
      required this.title,
      required this.image,
      required this.day,
      required this.time,
      required this.money,
      required this.isPositive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 2,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.085,
        width: MediaQuery.of(context).size.width * 0.9,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xFF282A40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      day,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.16,
            ),
            Text(
              isPositive ? "+" : "-",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              "images/us-dollar.png",
              width: MediaQuery.of(context).size.width * 0.035,
              height: MediaQuery.of(context).size.height * 0.035,
              color: Colors.white,
            ),
            Text(
              money,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
