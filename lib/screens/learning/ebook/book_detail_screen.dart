import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/constants/colors.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(title: title),
      body: Column(
        children: [
          // all widgets except button
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                // top of screen
                SizedBox(
                  width: Get.width,
                  height: Get.height / 4, 
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/pictures/images/book.jpg",
                        width: Get.width / 2.7,
                        height: Get.height,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("دانلود pdf " + title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  17 * MediaQuery.of(context).textScaleFactor,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("نویسنده: " "گوستاو فلوبر",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  15 * MediaQuery.of(context).textScaleFactor,
                            )),
                        Text("مترجم: " "سارا راکی",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  15 * MediaQuery.of(context).textScaleFactor,
                            )),
                        Text("ناشر: " "انتشارات پر",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  15 * MediaQuery.of(context).textScaleFactor,
                            )),
                      ],
                    ))
                  ]),
                ),

                SizedBox(
                  height: Get.height / 25,
                ),
                // description text
                const Expanded(
                    child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Text("""معرفی کتاب مادام بواری

کتاب مادام بواری نخستین و برجسته‌ترین اثر گوستاو فلوبر، نویسنده‌ی نامدار و رئالیست فرانسوی است که در دهه 1850 و پیش از ظهور عقاید روانشناختی نوین نظیر «فروید» و... با نگرشی واقع‌بینانه به انسان و روحیات او پرداخته و در آثارش واقعیت را از افسانه جدا کرده و کاملاً بی‌طرفانه به بیان عینی رفتار بشر می‌پردازد.
               
رمان مادام بواری (Madame Bovary)، اهمیت ویژه‌ای در تاریخ ادبیات داستانی دارد و شاید بتوان گفت «اما بواری» یکی از مهم‌ترین شخصیت زن داستانی است که این چنین نظر روانشناسان و اهل ادبیات را جلب خود کرده و در طول تاریخ و از زمان چاپ این کتاب تحلیل‌های عمیق و همه‌جانبه در قالب کتاب و مقاله و پایان‌نامه از او ارائه شده است.
               
او دختری است روستایی که اشتیاق زیبایی، ثروت، عشق و جامعه‌ای سطح بالا، او را به سمت رفتاری مردانه سوق می‌دهد؛ چه در معاشرت، چه در خوش‌گذرانی و چه در به‌ دست‌ گرفتن افسار امور اقتصادی، آن هم در جامعه‌ی نیمه‌ی نخست قرن نوزدهم که رفتارهایی بسیار کوچک‌تر از این، برایش تابوهایی بزرگ محسوب می‌شد. این ایده‌آل‌های خیالبافانه و جاه‌طلبی «اما» او را به سوی دو عشق متفاوت سوق می‌دهد که بدهی‌های قابل‌ توجهی نیز برایش به همراه می‌آورند...
               
در رابطه با مادام بوواری فلوبر روایت جالبی وجود دارد. گفته شده فلوبر به شدت با اما شخصیت اصلی داستانش درگیر شده بود به طوری که وقتی آن صحنه‌ای را می‌نویسد که اما خودش را مسموم می‌کند و زهر می‌خورد، خود فلوبر بعد از نوشتن این صحنه به شدت دچار سرگیجه و تهوع می‌شود؛ به طوری که بعد از مراجعه به بیمارستان پزشک معالجش بعد از انجام چند آزمایش اعلام می‌کند که او مسموم شده است!
               
آثار گوستاو فلوبر (Gustave Flaubert) به دلیل ریزبینی و دقت فراوان در انتخاب کلمات، آرایه‌های ادبی، و به‌ طور کلی زیبایی‌شناسی ادبی، در ادبیات زبان فرانسوی کاملاً منحصربه‌فرد می‌باشد. کمال‌گرایی وی به اندازه‌ای بود که هفته‌ها به نوشتن یک صفحه وقت سپری می‌نمود، و به همین دلیل، در طول سالیان نویسندگی خود تعداد کمی اثر از خود بر جای گذاشت. او پس از نوشتن، آثار را با صدای بسیار بلند در اتاق کار خود، که آن را فریادگاه می‌نامید، می‌خواند تا وزن، آهنگ و تأثیر واژگان و جملات را بسنجد.
               
در بخشی از کتاب مادام بواری می‌خوانیم:
              
صورت رنگ‌ پریده‌اش که کلاه بدون لبه‌ى او را در بر گرفته بود، بیشتر از سیب پلاسیده‌اى چین و چروک داشت و از آستین ژاکت قرمز رنگش دو دست بلند مشخص بود.
              
گرد و غبار انبار گاو یونجه، بتاس شستشو بربلى پشم‌ها به‌ حدى دست‌هاى او را زبر و خشن کرده بود. گویى دست‌هایش کثیف بودند، در صورتى‌که آن‌ها را با آب تمیز شسته بود. و به‌ خاطر کار و زحمت زیاد نیمه‌بسته بودند. این دست‌ها نشانه رنج و زحمت‌هاى او بودند. یک نوع خشکى رهبانى در صورتش موج مى‌زد و هیچگونه غم و شادى چهره سرد او را سست نمى‌کرد.
             
به‌ خاطر زندگى طولانى که با حیوانات داشت، همانند آن‌ها ساکت و بى‌زبان شده بود. براى اولین‌بار بود که خود را در میان جمعیتى به این زیادى مى‌دید و قلبا از پرچم‌ها، طبل‌ها، مردان کت‌پوش و آقاى مشاور مى‌ترسید. او بدون حرکت ایستاده بود و نمى‌دانست به جلو بدود یا که فرار کند و اینکه چرا جمعیت او را به‌ سمت سکو فشار مى‌دهند و اعضاى هیئت به او لبخند مى‌زنند. بله، این مظهر نیم قرن بردگى در مقابل این بورژوهاى درخشنده ایستاده بود.""",
                      textAlign: TextAlign.right),
                ))
              ]),
            ),
          ),

          // button
          InkWell(
            onTap: () async {},
            child: Container(
              width: Get.width,
              height: Get.height / 14,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  color: darkGoldColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "دانلود\t\t",
                    style: TextStyle(
                        color: const Color(0xffffffff),
                        fontSize: Get.width / 22),
                  ),
                  const Icon(
                    Icons.download,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
