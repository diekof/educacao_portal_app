import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:http/http.dart';

import '../../../constants/app_colors.dart';
import '../services/models/cliente_model.dart';
import '../services/repository/cliente_repository.dart';
import '../services/stores/client_select_store.dart';

class ClientForm extends StatefulWidget {
  const ClientForm({Key? key}) : super(key: key);

  @override
  State<ClientForm> createState() => _ClientFormState();
}

class _ClientFormState extends State<ClientForm> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Selecionar';
    Clients cliente = Clients();
    ClientSelect clientSelect = ClientSelect(ClienteRepository());

    Future<Map<dynamic, String>>? _futureClienteMapApi;
    _futureClienteMapApi = clientSelect.getClientList();
    if (_futureClienteMapApi == null) {
      print('***************** deu pau **************');
    } else {
      _futureClienteMapApi.then((Map<dynamic, String> myMap) {
        cliente = Clients(
          cliente_Id: myMap['clienteId'],
          cliente_Nome: myMap['clienteNome'],
        );
      });
    }   

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Selecione sua região',
              style:
                  TextStyle(color: AppColors.colorScheme.primary, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Observer(builder: (_) {
              return DropdownButton<String>(
                isExpanded: true,
                value: dropdownValue,
                icon: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Theme.of(context).colorScheme.primary,
                ),
                elevation: 16,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 15,
                ),
                underline: Container(
                  height: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
                // aqui o valor
                onChanged: (String? newValue) {
                  setState(
                    () {
                      dropdownValue = newValue!;
                    },
                  );
                },
                items: clientSelect.list.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              );
            }),
          ),
          Container(
            height: 20,
          ),
        ],
      ),
    );
  }
}
