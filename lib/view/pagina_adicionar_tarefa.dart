import 'package:flutter/material.dart';

class PaginaAdicionarTarefa extends StatelessWidget {
  const PaginaAdicionarTarefa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Adicionar Tarefa'),
        ),
        body: Center(
          child: Column(
            children: [
              TextFormField(
                keyboardType: const TextInputType.numberWithOptions(
                  signed: true,
                ),
                textInputAction: TextInputAction.send,
                decoration: const InputDecoration(hintText: 'Titulo'),
                onFieldSubmitted: (value) async {
                  // final company = await homeController.getCompany(value);
                  // razaoController.text = company.razaoSocial;
                },
              ),
              TextFormField(
                // controller: razaoController,
                decoration: const InputDecoration(hintText: 'Descrição'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // homeController.createCompany(CompanyModel(
            //   cnpjController.text,
            //   razaoController.text,
            //   'fantasia',
            //   'logradouro',
            //   '1',
            //   [Cnae(1, 'cnae1')],
            // ));
            Navigator.pop(context);
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ));
  }
}
