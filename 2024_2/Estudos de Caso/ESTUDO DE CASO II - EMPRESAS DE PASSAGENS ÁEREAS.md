# Estudo de Caso II - Empresas de Passagens Aéreas

A **FlyHigh Airlines** é uma empresa de aviação que opera voos domésticos e internacionais e deseja implementar um novo sistema de banco de dados para otimizar suas operações. Esse sistema é fundamental para o gerenciamento de informações críticas, como dados dos clientes, voos, aeronaves, reservas, funcionários e aeroportos, organizados de maneira única para garantir a integridade das operações.

## Passageiros

Os passageiros são os clientes que utilizam os serviços da FlyHigh Airlines. Com uma base de clientes crescente, cada passageiro é registrado no sistema com informações detalhadas:
- Nome
- CPF
- Telefone
- Endereço

Cada passageiro pode realizar várias reservas, o que significa que muitos registros de reservas podem estar associados a um único passageiro ao longo do tempo.

## Voos

Os voos realizados pela FlyHigh são essenciais para as operações da empresa. Cada voo, identificado de maneira única por um código, rastreia o itinerário de:
- Origem
- Destino
- Horários de partida e chegada

Um voo específico pode transportar diversos passageiros, e, por isso, está vinculado a várias reservas, cada uma correspondente a um passageiro.

## Aeroportos

Cada aeroporto onde a FlyHigh opera é essencial para a definição das rotas dos voos. Cada aeroporto, com seu código único, pode ser:
- Ponto de partida ou
- Ponto de chegada de muitos voos

A associação entre aeroportos e voos mostra como um único aeroporto pode ser utilizado em várias operações diárias.

## Aeronaves

A frota de aeronaves da FlyHigh é composta por vários modelos, cada um com um identificador exclusivo. Uma aeronave pode operar muitos voos ao longo de sua vida útil, sendo atribuída a diferentes rotas e horários. Assim, uma única aeronave pode ser associada a:
- Diversos voos em um único dia ou
- Vários voos ao longo de semanas.

## Funcionários

Os funcionários da FlyHigh desempenham funções variadas e essenciais para a realização dos voos. Cada funcionário, com um identificador exclusivo, pode trabalhar em vários voos, desempenhando diferentes papéis:
- Pilotos
- Comissários de bordo
- Equipe de solo

Cada voo depende de vários funcionários, reforçando a importância de equipes diversificadas para cada operação.

## Reservas

Quando um passageiro decide viajar, ele faz uma reserva. Cada reserva é associada a:
- Um único passageiro
- Um voo específico

Um passageiro pode ter múltiplas reservas ao longo do tempo, dependendo da quantidade de voos que ele decide tomar. Por outro lado, um voo pode ter diversas reservas associadas, correspondendo ao número de passageiros a bordo.

## Operações de Voo

A FlyHigh assegura que cada **operação de voo** esteja devidamente registrada, associando:
- Os voos a uma equipe específica de funcionários

Essa associação é fundamental para a gestão das tripulações e para o cumprimento das regulamentações de segurança, garantindo que cada voo tenha a tripulação qualificada necessária.
