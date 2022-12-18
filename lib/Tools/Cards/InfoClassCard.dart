import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../MorabiyarColors.dart';

class InfoClassCard extends StatelessWidget {
  const InfoClassCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10,top: 10),
              child: const Text(
                'روزها: ' + 'شنبه-یکشنبه-دوشنبه',
                textAlign: TextAlign.right,
              ),
            ),
            const Divider(
              thickness: 1.5,
              indent: 170, //Spacing at the top of divider.
              endIndent: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Center(
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          text: const TextSpan(
                              text: ' 100,000 ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                              ),

                              children: <TextSpan>[
                                TextSpan(
                          text: 'تومان ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                                ),

                              ]
                          ),
                        )
                    )
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text(
                    'ساعت: ' + '17 تا 20',
                    textAlign: TextAlign.right,
                  ),
                ),

              ],
            ),

            const Divider(
              thickness: 1.5,
              indent: 170, //Spacing at the top of divider.
              endIndent: 5,
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Text(
                'مربی: ' + 'حسین روحی',
                textAlign: TextAlign.right,
              ),
            ),
            const Divider(
              thickness: 1.5,
              indent: 170, //Spacing at the top of divider.
              endIndent: 5,
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Text(
                'تعداد جلسات: ' + '20',
                textAlign: TextAlign.right,
              ),
            ),
            const Divider(
              thickness: 1.5,
              indent: 170, //Spacing at the top of divider.
              endIndent: 5,
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Text(
                'تاریخ شروع: ' + '1400/4/5',
                textAlign: TextAlign.right,
              ),
            ),
            const Divider(
              thickness: 1.5,
              indent: 170, //Spacing at the top of divider.
              endIndent: 5,
            ),
            Container(
              margin: const EdgeInsets.only(right: 10,bottom: 10.0),
              child: const Text(
                ' تاریخ پایان: ' + '1400/6/7',
                textAlign: TextAlign.right,
              ),
            ),
            Center(
              child:    Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, //                   <--- border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(right: 10,bottom: 10.0,left: 10.0),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child:   Container(
                margin: const EdgeInsets.only(left: 3.0),
                width: 120,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child:    LinearProgressBar(
                    minHeight: 6,
                    maxSteps: 4,
                    progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                    currentStep: 2,
                    progressColor: KProgressBar,
                    backgroundColor: KProgressBackground,
                  ) ,
                ),
              )

                    ),

                    const Text(
                      'ظرفیت:'+' '+'100 نفر'+'   باقی مانده:'+' '+'30 نفر',
                      textAlign: TextAlign.right,
                    ),
                  ],
                )

              ),
            )

          ],
        ),

      ),
    ));
  }
}
