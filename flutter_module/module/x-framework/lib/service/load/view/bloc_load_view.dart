/*
 * 项目名:    x-framework
 * 包名
 * 文件名:    bloc_load_view
 * 创建时间:  2019-12-30 on 13:53
 * 描述:
 *
 * @author   xueml
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_framework/service/load/bloc/bloc.dart';

typedef ErrorBuilder = Widget Function(Exception exception);

class YBlocLoadView extends StatelessWidget {
  final LoadBloc loadBloc;
  final Widget child;
  final Widget? loadingWidget;
  final ErrorBuilder errorBuilder;
  final bool isInitLoading;

  const YBlocLoadView(
      {Key? key,
      required this.child,
      required this.loadBloc,
      this.isInitLoading = false,
      required this.errorBuilder,
      this.loadingWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoadBloc>.value(
      value: loadBloc,
      child: BlocBuilder<LoadBloc, LoadState>(
        builder: (context, state) {
          if (state is LoadingState ||
              (isInitLoading && state is InitialState)) {
            return loadingWidget ??
                const Center(child: CircularProgressIndicator());
          }
          if (state is ErrorState) {
            return errorBuilder(state.ex);
          }
          return child;
        },
      ),
    );
  }
}
