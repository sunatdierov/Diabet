import 'package:diabet_app/presentation/pages/third/bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/third/bloc/event.dart';
import 'package:diabet_app/presentation/pages/third/bloc/state.dart';
import 'package:diabet_app/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class ThirdPage extends StatelessWidget {
  static const id = 'third';

  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Настройка уведомлений',
            style: TextStyle(
              color: AppTheme.text,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: AppTheme.grey,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
        ),
        backgroundColor: AppTheme.grey,
        body: Container(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
              bottom: MediaQuery.of(context).padding.bottom + 20,
            ),
            child: BlocBuilder<ThirdPageBloc, ThirdPageState>(
                builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Очень важно вести дневник (мониторинг) сахара и введенного инсулина. Для этого предусмотрена функция напоминаний о необходимости вести записи:',
                        style: TextStyle(fontSize: 30),
                      )),
                  InkWell(
                    onTap: () => state.isAvailibleOn
                        ? {
                            BlocProvider.of<ThirdPageBloc>(context)
                                .add(SetPeriodic()),
                          }
                        : {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isAvailibleOn
                            ? AppTheme.green
                            : AppTheme.darkGrey,
                      ),
                      width: double.infinity,
                      height: 60,
                      child: const Text(
                        'Включить ежечасное напоминание',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => state.isAvailibleOff
                        ? {
                            BlocProvider.of<ThirdPageBloc>(context)
                                .add(CancelPeriodic()),
                          }
                        : {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isAvailibleOff
                            ? AppTheme.red
                            : AppTheme.darkGrey,
                      ),
                      width: double.infinity,
                      height: 60,
                      child: const Text(
                        'Выключить напоминания',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  )
                ],
              );
            })));
  }
}
