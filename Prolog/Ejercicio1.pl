% Definición de personas
persona(ana).
persona(bruno).
persona(carla).
persona(daniel).

% Definición de mascotas
mascota(perro).
mascota(gato).
mascota(loro).
mascota(pez).

% Restricciones dadas
tiene_mascota(Persona, Mascota). :-
    persona(Persona),
    mascota(Mascota).
restricciones :-
    tiene_mascota(ana, MascotaAna),
    MascotaAna \= perro,
    MascotaAna \= pez,

    tiene_mascota(bruno, MascotaBruno),
    MascotaBruno \= gato,

    tiene_mascota(carla, MascotaCarla),
    MascotaCarla \= pez,

    tiene_mascota(daniel, MascotaDaniel),
    MascotaDaniel \= loro,
    (MascotaDaniel = loro ; MascotaDaniel = pez),

    MascotaAna \= MascotaBruno,
    MascotaAna \= MascotaCarla,
    MascotaAna \= MascotaDaniel,
    MascotaBruno \= MascotaCarla,
    MascotaBruno \= MascotaDaniel,
    MascotaCarla \= MascotaDaniel.

% Mostrar las mascotas de cada persona
    resolver:-
    tiene_mascota(ana, MascotaAna),
    tiene_mascota(bruno, MascotaBruno),
    tiene_mascota(carla, MascotaCarla),
    tiene_mascota(daniel, MascotaDaniel),
    restricciones.