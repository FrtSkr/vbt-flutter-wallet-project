import 'package:flutter/material.dart';
import 'package:flutter_wallet_project/widgets/bottom_navigation_bar.dart';
import 'package:flutter_wallet_project/widgets/history_wallet.dart';
import 'package:flutter_wallet_project/widgets/icon_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18182A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF18182A),
        elevation: 0,
        actions: [
          Row(
            children: [
              Column(
                children: const [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "VBT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 200, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF272A3F),
                  ),
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                //Kartlar Listesi
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Icon widgets
                    IconWidget(
                      title: "Send",
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.blue,
                        ),
                      ),
                      delayAnimation: 1.5,
                      color: const Color(0xFF17334E),
                    ),
                    IconWidget(
                      title: "Pay",
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.payment,
                          color: Colors.red,
                        ),
                      ),
                      delayAnimation: 1.7,
                      color: const Color(0xFF411C2E),
                    ),
                    IconWidget(
                      title: "Withdraw",
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "images/icons8-cash-withdrawal-96.png",
                          width: MediaQuery.of(context).size.height * 0.08,
                          height: MediaQuery.of(context).size.height * 0.08,
                          color: Colors.green,
                        ),
                      ),
                      delayAnimation: 1.9,
                      color: const Color(0xFF163333),
                    ),
                    IconWidget(
                      title: "Bill",
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.receipt,
                          color: Colors.purple,
                        ),
                      ),
                      delayAnimation: 2.1,
                      color: const Color(0xFF32204D),
                    ),
                    IconWidget(
                      title: "Voucher",
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "images/icons8-voucher-96.png",
                          width: MediaQuery.of(context).size.height * 0.08,
                          height: MediaQuery.of(context).size.height * 0.08,
                          color: Colors.orange,
                        ),
                      ),
                      delayAnimation: 2.3,
                      color: const Color(0xFF412D27),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                //History Wallet
                const HistoryWallet(
                  title: "Spotify Subscription",
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Spotify_icon.svg/64px-Spotify_icon.svg.png",
                  day: "21JUn 2021",
                  time: "12:01 am",
                  money: "11.90",
                  isPositive: false,
                ),
                const HistoryWallet(
                  title: "Pinterest Salary",
                  image:
                      "https://seeklogo.com/images/P/pinterest-logo-CA98998DCB-seeklogo.com.png",
                  day: "20JUn 2021",
                  time: "09:00 pm",
                  money: "63.0",
                  isPositive: true,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
