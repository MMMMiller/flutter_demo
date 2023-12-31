///文件名:    reset_pwd_page
///创建时间:  2022/9/14 on 10:19
///描述:
///
///@author   YHF

import 'package:bc_user_module/domain/bloc/password/password_manager_bloc.dart';
import 'package:bc_user_module/domain/bloc/user_info/user_center_bloc.dart';
import 'package:bc_user_module/domain/bloc/vcode/vcode_bloc.dart';
import 'package:bc_user_module/router/bc_route_name.dart';
import 'package:bc_user_module/view/widget/get_vcode_widget.dart';
import 'package:common_lib/components/app_bar/bc_app_bar.dart';
import 'package:common_lib/components/index.dart';
import 'package:common_lib/service/router/router_util.dart';
import 'package:flutter/material.dart';
import 'package:common_lib/index.dart';
import 'package:flutter_boost/flutter_boost.dart';

class ResetPwdPage extends StatefulWidget {
  const ResetPwdPage({super.key});

  @override
  ResetPwdPageState createState() => ResetPwdPageState();
}

class ResetPwdPageState extends BcPage<ResetPwdPage> {
  @override
  void initState() {
    super.initState();
    injectBloc(PasswordManagerBloc(this)..init());
  }

  @override
  void sendEventToView(ViewEvent event) {
    if (event is ShowComfirmLoginDialogEvent) {
      BcDialog.showNoCancelDialog(context,
          title: '修改成功',
          content: '密码已重置，请通过新密码登录',
          confirmText: '返回登录',
          onConfirm: () => {
                UserCenterBloc.instance.cleanUserInfo(),
                RouterUtil.instance.popUntil(BcRouteName.loginPage),
              });
    }
    super.sendEventToView(event);
  }

  @override
  Widget bcBuild(BuildContext context) {
    return Container(
      padding: symmetric(24, 16),
      child: Column(
        children: [
          Form(
            key: bloc.phoneFormKey,
            onChanged: () => bloc.phoneCheck(),
            child: Container(
              height: 64,
              child: BcInputLayoutWidget(
                controller: bloc.phoneController,
                hint: '请输入手机号码',
                maxLength: 11,
                showClear: true,
                prefix: const Icon(CommonIcon.icMobile, size: 16),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return '请输入手机号码';
                  }
                  RegExp regex = new RegExp(r'^1([3456789])\d{9}$');
                  if (!regex.hasMatch(text)) {
                    return '请输入正确的手机号码';
                  }
                  return null;
                },
              ),
            ),
          ),
          sizeBox(height: 8),
          Form(
            key: bloc.vcCodeFormKey,
            onChanged: () => bloc.vcCodeCheck(),
            child: Container(
              height: 64,
              child: BcInputLayoutWidget(
                controller: bloc.codeController,
                hint: '请输入验证码',
                maxLength: 6,
                prefix: const Icon(CommonIcon.icShake, size: 16),
                suffix: VcodeWidget(
                  bloc.vcodeBloc,
                  getVcodeFunction: () {
                    if (bloc.phoneFormKey.currentState!.validate()) {
                      bloc.vcodeBloc
                          .getForgetPsdVcode(bloc.phoneController.text);
                    }
                  },
                ),
              ),
            ),
          ),
          sizeBox(height: 8),
          Form(
            key: bloc.pwdFormKey,
            onChanged: () => bloc.pwdCheck(),
            child: Container(
              height: 64,
              child: BcInputLayoutWidget(
                obscureText: true,
                maxLength: 16,
                controller: bloc.passWordController,
                hint: '密码由8-16位字母和数字组合',
                prefix: const Icon(CommonIcon.icLock, size: 16),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return '请输入密码';
                  }
                  if (text.length < 8 || text.length > 16) {
                    return '请输入8-16位字母和数字组合';
                  }

                  RegExp regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{1,}$');
                  if (!regex.hasMatch(text)) {
                    return '请输入8-16位字母和数字组合';
                  }
                  print(text);
                  return null;
                },
              ),
            ),
          ),
          sizeBox(height: 48),
          DataChangeWidget(
              dataChangeBloc: bloc.resetBtnValidBloc,
              child: (BuildContext context, DataChangeState btnState) {
                return CommonButton(
                  '确定',
                  fontSize: 14,
                  disable: !btnState.data,
                  color: ThemeUtil.getPrimaryColor(context),
                  radius: 4,
                  margin: const EdgeInsets.only(top: 16),
                  onPressed: () {

                    BoostNavigator.instance
                        .push("NativeViewController", arguments: {"a": "a", "b": "a"});
                    // bloc.resetPwd();
                  },
                );
              }),
        ],
      ),
    );
  }

  @override
  PreferredSizeWidget? get bcAppBar => BcAppBar(title: '忘记密码');

  PasswordManagerBloc get bloc => getBc<PasswordManagerBloc>();
}
