import 'package:diabet_app/data/models/diabet.dart';
import 'package:diabet_app/presentation/pages/first/bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/first/bloc/event.dart';
import 'package:diabet_app/presentation/pages/first/bloc/state.dart';
import 'package:diabet_app/presentation/pages/first/widget/samples_list.dart';
import 'package:diabet_app/resources/extension.dart';
import 'package:diabet_app/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class FirstPage extends StatelessWidget {
  static const id = 'first';

  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateToday = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Сегодня: ${AppMethods.monthString(dateToday.month)} ${dateToday.day} ',
            style: const TextStyle(
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
              top: 20,
              bottom: MediaQuery.of(context).padding.bottom + 20,
            ),
            child: BlocBuilder<FirstPageBloc, FirstPageState>(
                builder: (blocContext, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SamplesList(
                    samples: state.samples,
                    isDate: false,
                    backgrounColor: AppTheme.green,
                  ),
                  InkWell(
                    onTap: () => showModalBottomSheet(
                        context: blocContext,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return BottomForm(
                            onTap: ((String longInsulin, String shortInsulin,
                                String sugar, String? note) {
                              BlocProvider.of<FirstPageBloc>(blocContext)
                                  .add(AddingNewSample(
                                      diabetDto: DiabetDto(
                                dateTime: DateTime.now(),
                                longInsulin: double.parse(longInsulin),
                                shortInsulin: double.parse(shortInsulin),
                                sugar: double.parse(sugar),
                                note: note,
                              )));
                            }),
                          );
                        }),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        top: 20,
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
                        'Добавить новый замер',
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

class BottomForm extends StatelessWidget {
  Function onTap;

  BottomForm({
    // required this.shortInsulinController,
    // required this.longInsulinController,
    // required this.sugarController,
    // required this.noteController,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  TextEditingController shortInsulinController = TextEditingController();
  TextEditingController longInsulinController = TextEditingController();
  TextEditingController sugarController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      margin: const EdgeInsets.only(left: 50),
      padding:
          EdgeInsets.only(bottom: 15 + MediaQuery.of(context).padding.bottom),
      decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
          )),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: const Text(
            'Добавьте новый замер ',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            color: AppTheme.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Expanded(
            child: TextField(
              controller: shortInsulinController,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
              cursorColor: AppTheme.text,
              decoration: const InputDecoration(
                hintText: 'Короткий инсулин',
                hintStyle: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(0),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            color: AppTheme.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: longInsulinController,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
            cursorColor: AppTheme.text,
            decoration: const InputDecoration(
                hintText: 'Длинный инсулин',
                hintStyle: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: InputBorder.none),
          ),
        ),
        
        Container(
          margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            color: AppTheme.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: sugarController,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
            cursorColor: AppTheme.text,
            decoration: const InputDecoration(
                hintText: 'Уровень сахара',
                hintStyle: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: InputBorder.none),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          constraints: const BoxConstraints(minHeight: 54, maxHeight: 112),
          decoration: BoxDecoration(
            color: AppTheme.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            expands: true,
            maxLines: null,
            controller: noteController,
            style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: AppTheme.text),
            cursorColor: AppTheme.text,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Комментарии',
              hintStyle: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            if (validate()) {
              onTap(
                longInsulinController.text,
                shortInsulinController.text,
                sugarController.text,
                noteController.text,
              );
              Navigator.pop(context);
            }
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.only(left: 20, right: 20,top:20,bottom: 20),
            decoration: BoxDecoration(
              color: AppTheme.green,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: const Text(
              'Записать',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  bool validate() {
    try {
      double.parse(shortInsulinController.text);
      double.parse(longInsulinController.text);
      double.parse(sugarController.text);
    } catch (ex) {
      return false;
    }
    return true;
  }
}
