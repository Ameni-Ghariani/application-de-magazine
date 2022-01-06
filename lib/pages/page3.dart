import 'package:flutter/material.dart';
import '../models/user.dart';

class MatroisiemePage extends StatefulWidget {
  const MatroisiemePage({Key? key}) : super(key: key);

  @override
  _MatroisiemePageState createState() => _MatroisiemePageState();
}

class _MatroisiemePageState extends State<MatroisiemePage> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Profil utilisateur'),
        ),
        body: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
                builder: (context) => Form(
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration:
                                  const InputDecoration(hintText: 'Prénom'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Merci de saisir votre prénom';
                                }
                              },
                              onSaved: (value) =>
                                  setState(() => _user.prenom = value!),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                                decoration:
                                    const InputDecoration(hintText: 'Nom'),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Merci de saisir votre nom';
                                  }
                                },
                                onSaved: (value) =>
                                    setState(() => _user.nom = value!)),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                              child: const Text('Inscription'),
                            ),
                          ),
                          Expanded(
                            child: SwitchListTile(
                                title: const Text('Bulletin mensuel'),
                                value: _user.bulletin,
                                onChanged: (bool value) =>
                                    setState(() => _user.bulletin = value)),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                              child: const Text('Interêts'),
                            ),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                                title: const Text('Cuisine'),
                                value: _user.passions[User.PassionCuisine],
                                onChanged: (value) {
                                  setState(() => _user
                                      .passions[User.PassionCuisine] = value!);
                                }),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                                title: const Text('Voyage'),
                                value: _user.passions[User.PassionVoyage],
                                onChanged: (value) {
                                  setState(() => _user
                                      .passions[User.PassionVoyage] = value!);
                                }),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                                title: const Text('Musique'),
                                value: _user.passions[User.PassionMusique],
                                onChanged: (value) {
                                  setState(() => _user
                                      .passions[User.PassionMusique] = value!);
                                }),
                          ),
                          Expanded(
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 16.0),
                                child: ElevatedButton(
                                    onPressed: () {
                                      final form = _formKey.currentState;
                                      if (form!.validate()) {
                                        form.save();
                                        _user.save();
                                        affichage(context);
                                      }
                                    },
                                    child: const Text('Enregistrer'))),
                          ),
                        ])))));
  }

  affichage(BuildContext context) {
    //Scaffold.of(context)
    final snackBar = SnackBar(content: Text('***Soumission du formulaire***'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //.showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}
