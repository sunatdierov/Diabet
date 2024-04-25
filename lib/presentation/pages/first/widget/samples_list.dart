import 'package:diabet_app/data/models/diabet.dart';
import 'package:diabet_app/resources/extension.dart';
import 'package:diabet_app/resources/theme.dart';
import 'package:flutter/material.dart';

class SamplesList extends StatelessWidget {
  final List<DiabetDto> samples;
  final bool isDate;
  final Color backgrounColor;
  const SamplesList({
    required this.samples,
    required this.isDate,
    required this.backgrounColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: samples.isEmpty
          ? const Text(
              'Пока нет замеров',
              style: TextStyle(
                color: AppTheme.text,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            )
          : SingleChildScrollView(
              child: Column(children: [
                ...samples.map(
                  (e) => Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: backgrounColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  AppMethods.onlyTime(e.dateTime),
                                  style: const TextStyle(
                                    color: AppTheme.text,
                                    fontSize: 34,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                if (isDate == true)
                                  Text(
                                    AppMethods.onlyDate(e.dateTime),
                                    style: const TextStyle(
                                      color: AppTheme.text,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      e.shortInsulin.toString(),
                                      style: const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Text(
                                      'короткий',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      e.longInsulin.toString(),
                                      style: const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Text(
                                      'длинный',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      e.sugar.toString(),
                                      style: const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Text(
                                      'сахар',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (e.note != null && e.note?.length != null && e.note !='')
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Примечение: ' + e.note!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
    );
  }
}
