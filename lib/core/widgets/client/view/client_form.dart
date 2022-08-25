import 'package:educacao_portal_app/core/widgets/client/services/repository/cliente_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:http/http.dart';

import '../controller/cliente_controller_base.dart';
import '../services/model/client_model.dart';
import '../services/stores/client_select_store.dart';

class ClientForm extends StatefulWidget {
  const ClientForm({Key? key}) : super(key: key);

  @override
  State<ClientForm> createState() => _ClientFormState();
}

class _ClientFormState extends State<ClientForm> {
  ClientSelect? clientSelect = ClientSelect();
  var controller = ClienteController(ClienteRepository());

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _cor = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: _cor.secondary,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: _size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.7,
              child: FutureBuilder<List<ClientModel>>(
                future: controller.fetchClientList(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(color: _cor.background),
                    );
                  } else {
                    if (snapshot.hasError) {
                      return SnackBar(
                        content: Text('Erro: ' + snapshot.error.toString()),
                      );
                    } else {
                      return Observer(builder: (_) {
                        return DropdownButtonFormField<String>(
                          isExpanded: true,
                          hint: Text(
                            clientSelect!.dropDownValue ?? 'Selecione',
                            style: TextStyle(color: Colors.white),
                          ),
                          items: snapshot.data!
                              .map((value) => DropdownMenuItem<String>(
                                    child: Text(value.cliente_Nome!),
                                    value: value.cliente_Nome,
                                  ))
                              .toList(),
                          icon: Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          elevation: 20,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 15,
                          ),
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(color: Colors.black),
                            filled: false,
                          ),
                          onChanged: (newValue) {
                            setState(
                              () {
                                clientSelect!.setDropDownValue(newValue);
                              },
                            );
                          },
                        );
                      });
                    }
                  }
                },
              )),
        ],
      ),
    );
  }
}
