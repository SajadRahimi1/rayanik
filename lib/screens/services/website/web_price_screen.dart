import 'package:flutter/material.dart';
import 'package:rayanik/core/constants/web_constants.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/screens/services/website/web_plans_screen.dart';

class WebPriceScreen extends StatelessWidget {
  const WebPriceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: screensAppBar(),
            body: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                TabBar(
                    labelColor: Colors.black,
                    tabs: List.generate(
                        5, (index) => Tab(text: "پلن ${index + 1}"))),
                Expanded(
                    child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    WebPlansScreen(
                        planTitle: "پلن حمایتی",
                        items: plan1.split('\n'),
                        price: "7,000,000 تومان"),
                    WebPlansScreen(
                      planTitle: "پلن اقتصادی",
                      items: plan2.split('\n'),
                      price: "10,000,000 تومان",
                      lastEnableIndex: 27,
                    ),
                    WebPlansScreen(
                      planTitle: "پلن استاندارد",
                      items: plan3.split('\n'),
                      price: "14,000,000 تومان",
                      lastEnableIndex: 35,
                    ),
                    WebPlansScreen(
                      planTitle: "پلن ویژه",
                      items: plan4.split('\n'),
                      price: "19,000,000 تومان",
                      lastEnableIndex: 43,
                    ),
                    WebPlansScreen(
                      planTitle: "پلن VIP",
                      items: plan5.split('\n'),
                      price: "25,000,000 تومان",
                    ),
                  ],
                ))
              ],
            )),
      ),
    );
  }
}

/*[
                                "حمایتی",
                                "اقتصادی",
                                "استاندارد",
                                "ویژه",
                                "VIP"
                              ][index],*/



   /*                           """

"""*/