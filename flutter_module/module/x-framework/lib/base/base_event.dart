/*
 * 项目名:    x-framework
 * 包名
 * 文件名:    base_event
 * 创建时间:  2019-12-25 on 17:13
 * 描述:
 *
 * @author   xueml
 */

import 'package:bloc/bloc.dart';
import 'package:x_framework/net/exception/exception.dart';

import 'base_bloc.dart';
import 'base_net_entity.dart';

abstract class YBaseEvent<B, S> extends BaseEvent {
  Stream<S> applyAsync(B bloc, S currentState);
}

abstract class BaseEvent {
  void handlerException(Bloc bloc, BaseNetEntity entity) {
    throw DomainException(entity.message.toString(), code: entity.code ?? 0);
  }

  void handlerLoadException(BaseLoadBloc bloc, BaseNetEntity entity) {
    bloc.view?.dismissDialog();
    throw DomainException(entity.message.toString(), code: entity.code ?? 0);
  }

}

bool isSuccess(BaseNetEntity entity) {
  return entity.code == 200;
}