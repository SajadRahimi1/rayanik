import 'package:flutter/material.dart';
import 'package:rayanik/core/constants/web_constants.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class WebPriceScreen extends StatelessWidget {
  const WebPriceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List plan1List = plan1.split('\n');
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
                    Column(
                      children: [
                        Text(
                          "پلن حمایتی",
                          style: TextStyle(
                              color: Color(0xffbc8971),
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "7,000,000 تومان",
                            style: TextStyle(
                                color: Color(0xffbc8971), fontSize: 22),
                          ),
                        ),
                        Expanded(
                            child: GridView.builder(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                itemCount: plan1List.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (_, index) => Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Color(0xffbc8971)),
                                      ),
                                      child: Row(
                                        children: [
                                          index < 21
                                              ? const Icon(
                                                  Icons.done,
                                                  color: Colors.green,
                                                )
                                              : const Icon(
                                                  Icons.close,
                                                  color: Colors.red,
                                                ),
                                          Expanded(
                                              child: Text(plan1List[index],
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.justify))
                                        ],
                                      ),
                                    )))
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "پلن اقتصادی",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "پلن استاندارد",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "پلن ویژه",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "پلن VIP",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        )
                      ],
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