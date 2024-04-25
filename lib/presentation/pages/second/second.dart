import 'package:diabet_app/presentation/pages/first/widget/samples_list.dart';
import 'package:diabet_app/presentation/pages/second/bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/second/bloc/state.dart';
import 'package:diabet_app/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class SecondPage extends StatelessWidget {
  static const id = 'second';

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'История замеров',
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
            padding: const EdgeInsets.only(
              
            bottom: 40,
            ),
            child: BlocBuilder<SecondPageBloc, SecondPageState>(
                builder: (context, state) {
              return SamplesList(
                samples: state.samples,
                isDate: true,
                backgrounColor: AppTheme.green,
              );
            })));
  }
}
