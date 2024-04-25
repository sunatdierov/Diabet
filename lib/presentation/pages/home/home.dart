import 'package:diabet_app/presentation/pages/home/bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/home/bloc/event.dart';
import 'package:diabet_app/presentation/pages/home/bloc/state.dart';
import 'package:diabet_app/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  static const id = 'home';

  const HomePage({Key? key}) : super(key: key);

  static const textPadding = EdgeInsets.only(top: 20, left: 20, right: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Диабет под котнролем',
            style: TextStyle(
              color: AppTheme.text,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: AppTheme.grey,
          elevation: 0,
        ),
        backgroundColor: AppTheme.grey,
        body: Container(
            padding: EdgeInsets.only(
              top: 20,
              bottom: MediaQuery.of(context).padding.bottom + 20,
            ),
            child: BlocBuilder<HomePageBloc, HomePageState>(
                builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HomeMenuList(),
                          const SizedBox(height: 30,),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: textPadding,
                            child: const Text(
                              'Основные правила контроля здоровья: ',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            padding: textPadding,
                            child: const Text(
                              '1. Регулярно контролировать уровень сахара в крови. Лучше всего это делать глюкометром.',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Container(
                            padding: textPadding,
                            child: const Text(
                              '2. Вести дневник состояний',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Container(
                            padding: textPadding,
                            child: const Text(
                              '3. Регулярно контролировать уровень сахара в моче при помощи полосок-тестеров и вести дневник данных',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Container(
                            padding: textPadding,
                            child: const Text(
                              '4. Следует ограничить потребление алкоголя',
                              style: const TextStyle(fontSize: 30),
                            ),
                          ),
                          Container(
                            padding: textPadding,
                            child: const Text(
                              'Сахарный диабет – это очень коварное заболевание и даже незначительные трещины, порезы и ссадины могут долго не заживать или развиваться в гангрену, не говоря о других тонкостях и особенностях ухода, описанных выше.',
                              style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(height: 30,),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => launch("tel://88007750000"),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        right: 20,
                        left: 20,
                      ),
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppTheme.red,
                      ),
                      width: double.infinity,
                      height: 60,
                      child: const Text(
                        'Экстренный вызов',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              );
            })));
  }
}

class HomeMenuList extends StatelessWidget {
  const HomeMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Row(
          children: [
            HomeMenuListItem(
              image: 'assets/png/1.png',
              name: 'Сегодня',
              onTap: () =>
                  BlocProvider.of<HomePageBloc>(context).add(OnRouteToFirst()),
            ),
            HomeMenuListItem(
              image: 'assets/png/2.png',
              name: 'История',
              onTap: () =>
                  BlocProvider.of<HomePageBloc>(context).add(OnRouteToSecond()),
            ),
            HomeMenuListItem(
              image: 'assets/png/3.png',
              name: 'Напоминания',
              onTap: () =>
                  BlocProvider.of<HomePageBloc>(context).add(OnRouteToThird()),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMenuListItem extends StatelessWidget {
  String image;
  String name;
  Function onTap;

  HomeMenuListItem({
    required this.image,
    required this.name,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: 250,
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppTheme.green.withOpacity(0.3)),
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: const TextStyle(
                  color: AppTheme.text,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
