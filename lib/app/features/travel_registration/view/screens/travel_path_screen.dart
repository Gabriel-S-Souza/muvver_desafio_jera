// ignore_for_file: unused_import

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../app.dart';
import '../widgets/widgets.dart';

class TravelPathScreen extends StatelessWidget {
  TravelPathScreen({Key? key}) : super(key: key);

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
            title: 'Viajante',
            sectionTitle: 'Qual o trajeto da sua viagem?',
            showAction: true,
            bottom: TabBarWidget(
              onChanged: _controller.setTabItemSelected,
            ),
            bottomHeight: MediaQuery.of(context).size.height * 0.134,
          ),
          body: Observer(
            builder: (context) => !_controller.showMap
                ? Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: _TravelPathForm(
                    controller: _controller,
                  ),
                )
                : const MapWidget()
          ),
          bottomNavigationBar: BottomFixedWidget(
            child: ButtonAppWidget(
              onPressed: () => _controller.goToVolume(context),
              title: 'Confirmar' 
            ),
          )
        ),
      )
    );
}

class _TravelPathForm extends StatelessWidget {
  const _TravelPathForm({
    required this.controller
  });
  final TravelRegistrationController controller;


  @override
  Widget build(BuildContext context) => Observer(
    builder: (context) => ListView(
        children: [
          const SizedBox(height: 24),
          Text(
            'Selecione a data e rota da sua viagem',
            style: Theme.of(context).textTheme.headline4!.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary
            ),
          ),
          Row(
            children: [
              Flexible(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () async {
                    controller.startDate =
                        controller.startDateController.text =
                            await controller.selectDate(context);
                  },
                  child: IgnorePointer(
                    child: TextFieldWidget(
                      label: 'Data de partida',
                      margin: const EdgeInsets.fromLTRB(0, 22, 4, 0),
                      controller: controller.startDateController,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () async {
                    controller.endDate =
                        controller.endDateController.text =
                            await controller.selectDate(context);
                  },
                  child: IgnorePointer(
                    child: TextFieldWidget(
                      label: 'Data de chegada',
                      margin: const EdgeInsets.fromLTRB(4, 22, 0, 0),
                      controller: controller.endDateController,
                    ),
                  ),
                ),
              ),
            ],
          ),
          TextFieldSuggestionWidget(
            controller: controller.originController,
            label: 'Cidade de origem',
            margin: const EdgeInsets.only(top: 24, bottom: 12),
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
              controller.originController.text = value;
            },
            suggestionsCallback: (value) async {
              await controller.autoCompleteSearch(value);
              return controller.suggestions;
            }
          ),
          controller.midpoints.isNotEmpty
              ? _MidpointList(
                midpoints: controller.midpoints,
                onRemove: controller.removeMindpoint,
              )
              : const SizedBox(),
          TextFieldSuggestionWidget(
            controller: controller.destinyController,
            label: 'Cidade de destino',
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
              controller.destinyController.text = value;
            },
            suggestionsCallback: (value) async {
              await controller.autoCompleteSearch(value);
              return controller.suggestions;
            }
          ),
          Ink(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              borderRadius: BorderRadius.circular(28),
              onTap: () => controller.goToMidpointForm(context),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.control_point,
                    size: 28,
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Adicionar ponto intermedi??rio',
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.25
                          ),
                        ),
                        AutoSizeText(
                          'E aumente sua chance de match',
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme.headline5!.copyWith(
                            color: Theme.of(context)
                                .colorScheme.secondary.withOpacity(0.35),
                            letterSpacing: -0.25
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 50)
        ]
      )
  );
}

class _MidpointList extends StatelessWidget {
  const _MidpointList({
    Key? key, 
    required this.midpoints, 
    required this.onRemove
  }) : super(key: key);
  final List<String> midpoints;
  final void Function(String) onRemove;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
        children: List.generate(
          midpoints.length, (index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Theme.of(context).colorScheme.tertiary,
                    size: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    midpoints[index],
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              IconButton(
                onPressed: () => onRemove(midpoints[index]), 
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 30,
                )
              )
            ],
          )
        )
      ),
  );
}