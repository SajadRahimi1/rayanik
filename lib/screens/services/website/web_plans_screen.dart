import 'package:flutter/material.dart';

class WebPlansScreen extends StatelessWidget {
  const WebPlansScreen(
      {Key? key,
      required this.planTitle,
      required this.items,
      required this.price,
      this.lastEnableIndex = -1})
      : super(key: key);
  final String planTitle, price;
  final List<String> items;
  final int lastEnableIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          planTitle,
          style: const TextStyle(
              color: Color(0xffbc8971),
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            price,
            style: const TextStyle(color: Color(0xffbc8971), fontSize: 22),
          ),
        ),
        Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (_, index) => Container(
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xffbc8971)),
                      ),
                      child: Row(
                        children: [
                          lastEnableIndex == -1 || index < lastEnableIndex
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.green,
                                )
                              : const Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                          Expanded(
                              child: Text(items[index],
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify))
                        ],
                      ),
                    )))
      ],
    );
  }
}
