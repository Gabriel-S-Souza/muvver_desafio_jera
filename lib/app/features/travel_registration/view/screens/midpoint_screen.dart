import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../app.dart';
import '../widgets/widgets.dart';

class MidpointScreen extends StatelessWidget {
  MidpointScreen({Key? key}) : super(key: key);

  final TravelRegistrationController _controller =
      GetIt.I.get<TravelRegistrationController>();

   @override
  Widget build(BuildContext context)  => SafeArea(
    child: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBarWidget(
          context: context,
          backIcon: Icons.close,
          title: '',
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 0,
            left: 16,
            right: 16
          ),
          child: ListView(
            children: [
              const SizedBox(height: 24),
              Text(
                'Ponto intermediário',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary
                ),
              ),
              const SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  text: 'Insira os pontos intermediários na ',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  children: [
                    TextSpan(
                      text: 'sequência exata ',
                      style: Theme.of(context).textTheme.headline4
                          ?.copyWith(
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    TextSpan(
                      text: 'em que você passará por eles',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                  ]
                ),
              ),
              TextFieldSuggestionWidget(
              controller: _controller.midpointController,
              margin: const EdgeInsets.only(top: 12, bottom: 26),
              preffixIcon: Icons.search,
              itemBuilder: (context, suggestion) => ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8
                ),
                child: ListTile(
                  title: Text(
                    suggestion,
                    style: Theme.of(context).textTheme.bodyText1,
                    maxLines: 1,
                  ),
                  leading: Icon(
                      Icons.location_on,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                )
              ),
              onSuggestionSelected: (value) {
                _controller.midpointController.text = value;
              },
              suggestionsCallback: (value) async {
                await _controller.autoCompleteSearch(value);
                return _controller.suggestions;
                }
              ),
              _controller.originController.text.isNotEmpty
              && _controller.destinyController.text.isNotEmpty
                  ? _Suggestions(
                    origin: _controller.origin,
                    destiny: _controller.destiny,
                  )
                  : const SizedBox()
            ],
          ),
        ),
        bottomNavigationBar: BottomFixedWidget(
          child: ButtonAppWidget(
            onPressed: _controller.midpointController.text.isNotEmpty
                ? () => _controller.addMidpoint(
                    context,
                    _controller.midpointController.text,
                  )
                : null,
            title: 'Confirmar' 
          ),
        )
      ),
    )
  );
}

class _Suggestions extends StatefulWidget {
  const _Suggestions({
    Key? key, 
    required this.origin, 
    required this.destiny
  }) : super(key: key);
  final String origin;
  final String destiny;

  @override
  State<_Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<_Suggestions> {
  late List<String> suggestions;

  @override
  void initState() {
    super.initState();
    suggestions = _getSuggestions();
  }

  @override
  Widget build(BuildContext context) => Column(
      children: [
        Text(
          '''Usuários que viajam de ${widget.origin} para ${widget.destiny} também passam por:''',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        ...suggestions.map((e) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Theme.of(context).colorScheme.tertiary,
                size: 30,
              ),
              const SizedBox(width: 8),
              Text(
                e,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      )
      ],
    );
}

List<String> _getSuggestions() {
  final List<String> suggestionsCopy =
      List.from(_mockSuggestionPlaces);
  final List<String> suggestions = [];
  for (var i = 0; i < 3; i++) {
    final int random = Random().nextInt(suggestionsCopy.length);
    suggestions.add(suggestionsCopy.removeAt(random));
  }
  return suggestions;
}

final List<String> _mockSuggestionPlaces = [
  'Rio de Janeiro, RJ',
  'São Paulo, SP',
  'Brasília, BR',
  'Goiânia, GO',
  'Salvador, BA',
  'Fortaleza, CE',
  'Aracaju, SE',
  'Maceió, AL'
];