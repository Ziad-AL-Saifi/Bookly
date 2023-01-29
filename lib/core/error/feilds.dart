// ignore_for_file: public_member_api_docs, sort_constructors_first
class Feiluer {
  String masserErorr;
  Feiluer({
    required this.masserErorr,
  });
}

class ServerFeiluer extends Feiluer {
  ServerFeiluer({required super.masserErorr});
}
