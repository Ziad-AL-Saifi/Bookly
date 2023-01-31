// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class Feiluer {
  String masserErorr;
  Feiluer({
    required this.masserErorr,
  });
}

class ServerFeiluer extends Feiluer {
  ServerFeiluer({required super.masserErorr});

  factory ServerFeiluer.fromErrorDio(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFeiluer(masserErorr: 'Connect time out');

      case DioErrorType.sendTimeout:
        return ServerFeiluer(masserErorr: 'Send time out');

      case DioErrorType.receiveTimeout:
        return ServerFeiluer(masserErorr: 'Receive time out');

      case DioErrorType.response:
        return ServerFeiluer.responseError(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFeiluer(masserErorr: 'cancel time out');

      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFeiluer(masserErorr: 'No Internet Connection');
        }
        return ServerFeiluer(masserErorr: 'Unexpected Error, Please try later');

      default:
        return ServerFeiluer(
            masserErorr: 'Opps Somthing wrong,Please try later');
    }
  }

  factory ServerFeiluer.responseError(int state, dynamic responce) {
    if (state == 400 || state == 401 || state == 403) {
      return ServerFeiluer(masserErorr: responce['error']['message']);
    } else if (state == 404) {
      return ServerFeiluer(
          masserErorr: 'Your request not found,Please try later');
    } else if (state == 500) {
      return ServerFeiluer(
          masserErorr: 'Internal Server error,Please try later');
    } else {
      return ServerFeiluer(masserErorr: 'Opps Somthing wrong,Please try later');
    }
  }
}
