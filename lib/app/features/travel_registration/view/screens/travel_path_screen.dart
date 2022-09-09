import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
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
          body: Padding(
            padding: const EdgeInsets.only(
              top: 0,
              left: 16,
              right: 16
            ),
            child: _TravelPathForm(
              controller: _controller,
            )
          ),
          bottomNavigationBar: BottomFixedWidget(
            child: ButtonAppWidget(
              onPressed: () {},
              title: 'Avançar' 
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
          const TextFieldWidget(
            label: 'Cidade de origem',
            margin: EdgeInsets.only(top: 24, bottom: 12),
            preffixIcon: Icons.search,
          ),
          controller.midpoints.isNotEmpty
              ? _MidpointList(
                midpoints: controller.midpoints,
                onRemove: controller.removeMindpoint,
              )
              : const SizedBox(),
          const TextFieldWidget(
            label: 'Cidade de destino',
            margin: EdgeInsets.only(top: 12, bottom: 26),
            preffixIcon: Icons.search,
          ),
          Ink(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              borderRadius: BorderRadius.circular(28),
              onTap: () => controller.addMidpoint('Castanhal, PA'),
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
                          'Adicionar ponto intermediário',
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
          )
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