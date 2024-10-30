% Definición de hechos

%HOMBRES----------------------------------------------------------------------------------------

%abuelo paterno
hombre(adrianH).

%abuelo materno
hombre(hectorLuis).

%core
hombre(joseAntonio).
hombre(josue).
hombre(jasiel).

%tios maternos sangre
hombre(moises).
hombre(mario).
hombre(carlos).
hombre(hector).

%tios maternos por matrimonio
hombre(alejandroX).
hombre(gerardo).

%tios paternos sangre
hombre(julio).
hombre(luisManuel).
hombre(adrian).
hombre(jesus).
hombre(eduardo).
hombre(francicso).
hombre(gabriel).

%tios paternos por matrimonio
hombre(rodolfo).
hombre(juan).
hombre(eloy).
hombre(ismael).

%primos maternos sangre
hombre(hectorAlexander).
hombre(tonatiuh).
hombre(yahir).
hombre(carlosjr).
hombre(joseAlonso).
hombre(diego).
hombre(zuriel).

%primos maternos por matrimonio
hombre(diegoE).
hombre(federico).
hombre(adrianZaragosa).
hombre(aguacate).

%primos paternos sangre
hombre(joel).
hombre(andy).
hombre(lalo).
hombre(alejandro).
hombre(marcoAntonio).
hombre(jesusjr).
hombre(juanManuel).
hombre(huber).
hombre(luis).
hombre(edgardo).
hombre(angel).
hombre(ismaeljr).
hombre(lenin).

%primos paternos por matrimonio
hombre(german).
hombre(antonio).
hombre(juanCarlosAdriana).
hombre(cesar).
hombre(vladimir).
hombre(manuelFlores).
hombre(saulZamora).
hombre(jorge).
hombre(antonioLili).
hombre(oscar).
hombre(jesusLopez).
hombre(edgar).

%sobrinos maternos sangre
hombre(said).
hombre(mateo).
hombre(noah).
hombre(nate).
hombre(emiliano).
hombre(carlosAdrian).

%sobrinos paternos sangre
hombre(luisjr).
hombre(angeljr).
hombre(pedroDaniel).
hombre(alan).
hombre(juanCarlos).
hombre(juanPablo).
hombre(pabloGael).
hombre(jorgito).
hombre(brayan).
hombre(oscarin).
hombre(chuchito).

%sobrinos paternos por matrimonio
hombre(julioItzel).
hombre(jonathan).

%sobrinos nietos paternos
hombre(julianSaid).


%MUJERES----------------------------------------------------------------------------------------

%abuela paterna
mujer(petra).

%abuela materna
mujer(mariaLuisa).

%core
mujer(guadalupe).

%tias maternas sangre
mujer(varonica).
mujer(luisa).

%tias maternas por matrimonio
mujer(yuritzi).
mujer(mercedes).
mujer(lorena).
mujer(marta).

%tias paternas sangre
mujer(guillermina).
mujer(angeles).
mujer(esperanza).
mujer(maria).

%tias paternas por matrimonio
mujer(martha).
mujer(lourdes).
mujer(diana).
mujer(isabel).
mujer(janette).
mujer(fidelina).

%primas maternas sangre
mujer(renata).
mujer(esbeydey).
mujer(chabeli).
mujer(lesley).
mujer(evelyn).
mujer(venecia).
mujer(francia).
mujer(alejandraEstefania).
mujer(karlaVeronica).
mujer(karla).
mujer(daraHetzemani).
mujer(lia).

%primas maternas por matrimonio
mujer(jesica).
mujer(alma).
mujer(sandra).

%primas paternas sangre
mujer(leah).
mujer(mildred).
mujer(cintia).
mujer(andrea).
mujer(adriana).
mujer(veronicaP).
mujer(dianaLaura).
mujer(fannyLucero).
mujer(rocio).
mujer(almaLucia).
mujer(cristal).
mujer(guadalupeE).
mujer(liliana).
mujer(fabiola).
mujer(mayra).
mujer(miriam).

%primas paternas por matrimonio
mujer(rosa).
mujer(tania).
mujer(lupita).
mujer(blanca).
mujer(lulu).
mujer(leninsWife).

%sobrinas maternas sangre
mujer(constansa).
mujer(valentina).
mujer(keira).
mujer(zoe).
mujer(dana).
mujer(pend).%diego
mujer(irlanda).
mujer(taire).
mujer(victoriaNatalia).
mujer(maya).
mujer(mairaJose).
mujer(julia).

%sobrinas paternas sangre
mujer(abril).
mujer(estefania).
mujer(ximena).
mujer(marianita).
mujer(mirandaItzel).
mujer(julieta).
mujer(dashaGalilea).
mujer(wendy).
mujer(clara).
mujer(fernanda).
mujer(mariana).
mujer(zulema).
mujer(sofia).
mujer(anel).
mujer(alondra).

%sobrinas nietas paternas
mujer(emily).
mujer(sofi).
mujer(pending).%ximena


%RELACIONES----------------------------------------------------------------------------------------

%core
padre(adrianH, joseAntonio).
padre(hectorLuis, guadalupe).
padre(joseAntonio, josue).
padre(joseAntonio, jasiel).

%ABUELOS

%materno
padre(hectorLuis, moises).
padre(hectorLuis, mario).
padre(hectorLuis, carlos).
padre(hectorLuis, hector).
padre(hectorLuis, veronica).
padre(hectorLuis, luisa).

%paterno
padre(adrianH, julio).
padre(adrianH, luisManuel).
padre(adrianH, adrian).
padre(adrianH, jesus).
padre(adrianH, eduardo).
padre(adrianH, francisco).
padre(adrianH, gabriel).
padre(adrianH, guillermina).
padre(adrianH, angeles).
padre(adrianH, esperanza).
padre(adrianH, maria).

%TIOS


%maternos
padre(moises, hectorAlexander).
padre(moises, renata).
padre(moises, esbeydey).

padre(mario, tonatiuh).
padre(mario, yahir).
padre(mario, chabeli).

padre(carlos, carlosjr).
padre(carlos, lesley).
padre(carlos, evelyn).
padre(carlos, karla).

padre(hector, joseAlonso).
padre(hector, venecia).
padre(hector, francia).

padre(alejandroX, diego).
padre(alejandroX, alejandraEstefania).
padre(alejandroX, karlaVeronica).
padre(alejandroX, daraHetzemani).

padre(gerardo, zuriel).
padre(gerardo, lia).

%paternos 
padre(julio, joel).
padre(julio, andy).
padre(julio, leah).

padre(luisManuel, lalo).
padre(luisManuel, cintia).
padre(luisManuel, mildred).

padre(adrian, alejandro).
padre(adrian, andrea).

padre(jesus, marcoAntonio).
padre(jesus, jesusjr).
padre(jesus, juanManuel).
padre(jesus, adriana).

padre(francisco, veronicaP).
padre(francisco, dianaLaura).
padre(francisco, fannyLucero).

padre(rodolfo, huber).

padre(juan, rocio).
padre(juan, almaLucia).

padre(eloy, edgardo).
padre(eloy, angel).
padre(eloy, luis).

padre(ismael, ismaeljr).
padre(ismael, lenin).
padre(ismael, cristal).
padre(ismael, guadalupeE).

%PRIMOS

%maternos
padre(tonatiuh, constansa).
padre(tonatiuh, valentina).

padre(yahir, keira).
padre(yahir, said).

padre(diego, zoe).
padre(diego, dana).
padre(diego, pend).

padre(diegoE, noah).
padre(diegoE, nate).

padre(federico, irlanda).
padre(federico, taire).

padre(adrianZaragosa, victoriaNatalia).
padre(adrianZaragosa, emiliano).
padre(adrianZaragosa, carlosAdrian).

padre(aguacate, maya).
padre(aguacate, mairaJose).
padre(aguacate, julia).

%paternos

padre(lalo, abril).

padre(luis, luisjr).
padre(luis, estefania).

padre(edgardo, ximena).

padre(angel, angeljr).
padre(angel, pedroDaniel).

padre(ismaeljr, alan).

padre(antonio, marianita).

padre(juanCarlosAdriana, juanCarlos).

padre(manuelFlores, juanPablo).
padre(manuelFlores, mirandaItzel).
padre(manuelFlores, julieta).

padre(saulZamora, dashaGalilea).
padre(saulZamora, pabloGael).

padre(jorge, jorgito).
padre(jorge, brayan).
padre(jorge, wendy).

padre(antonioLili, clara).

padre(oscar, fernanda).
padre(oscar, oscarin).

padre(jesusLopez, mariana).
padre(jesusLopez, chuchito).

padre(edgar, zulema).
padre(edgar, sofia).
padre(edgar, anel).
padre(edgar, alondra).

%Sobrinos
padre(julioItzel, julianSaid).

padre(jonathan, emily).
padre(jonathan, sofi).
padre(jonathan, pending).


%MADRES
 
%core
madre(petra, joseAntonio).
madre(mariaLuisa, guadalupe).
madre(guadalupe, josue).
madre(guadalupe, jasiel).

%ABUELAS

%materna
madre(mariaLuisa, moises).
madre(mariaLuisa, mario).
madre(mariaLuisa, carlos).
madre(mariaLuisa, hector).
madre(mariaLuisa, veronica).
madre(mariaLuisa, luisa).

%paterna
madre(petra, julio).
madre(petra, luisManuel).
madre(petra, adrian).
madre(petra, jesus).
madre(petra, eduardo).
madre(petra, francisco).
madre(petra, gabriel).
madre(petra, guillermina).
madre(petra, angeles).
madre(petra, esperanza).
madre(petra, maria).

%TIAS

%maternas
madre(yuritzi, hectorAlexander).
madre(yuritzi, renata).
madre(yuritzi, esbeydey).

madre(mercedes, tonatiuh).
madre(mercedes, yahir).
madre(mercedes, chabeli).

madre(lorena, carlosjr).
madre(lorena, lesley).
madre(lorena, evelyn).

madre(marta, joseAlonso).
madre(marta, venecia).
madre(marta, francia).

madre(veronica, diego).
madre(veronica, alejandraEstefania).
madre(veronica, karlaVeronica).
madre(veronica, daraHetzemani).

madre(luisa, zuriel).
madre(luisa, lia).

%paternas
madre(martha, joel).
madre(martha, andy).
madre(martha, leah).

madre(lourdes, lalo).
madre(lourdes, cintia).
madre(lourdes, mildred).

madre(diana, alejandro).
madre(diana, andrea).

madre(isabel, marcoAntonio).
madre(isabel, jesusjr).
madre(isabel, juanManuel).
madre(isabel, adriana).

madre(fidelina, veronicaP).
madre(fidelina, dianaLaura).
madre(fidelina, fannyLucero).

madre(maria, luis).
madre(maria, angel).
madre(maria, edgardo).

madre(esperanza, ismaeljr).
madre(esperanza, lenin).
madre(esperanza, cristal).
madre(esperanza, guadalupeE).

madre(angeles, rocio).
madre(angeles, almaLucia).

madre(guillermina, huber).

%PRIMAS

%maternas

madre(jesica, constansa).
madre(jesica, valentina).

madre(alma, keira).
madre(alma, said).

madre(sandra, zoe).
madre(sandra, dana).
madre(sandra, pend).

madre(evelyn, noah).
madre(evelyn, nate).

madre(venecia, irlanda).
madre(venecia, taire).

madre(alejandraEstefania, victoriaNatalia).
madre(alejandraEstefania, emiliano).
madre(alejandraEstefania, carlosAdrian).

madre(karlaVeronica, maya).
madre(karlaVeronica, mairaJose).
madre(karlaVeronica, julia).

%paternas

madre(rosa, abril).

madre(tania, luisjr).
madre(tania, estefania).

madre(lupita, ximena).

madre(blanca, angeljr).
madre(blanca, pedroDaniel).

madre(lulu, alan).

madre(cintia, marianita).

madre(adriana, juanCarlos).

madre(rocio, juanPablo).
madre(rocio, mirandaItzel).
madre(rocio, julieta).

madre(almaLucia, dashaGalilea).
madre(almaLucia, pabloGael).

madre(guadalupeE, jorgito).
madre(guadalupeE, brayan).
madre(guadalupeE, wendy).

madre(liliana, clara).

madre(fabiola, fernanda).
madre(fabiola, oscarin).

madre(mayra, mariana).
madre(mayra, chuchito).

madre(miriam, zulema).
madre(miriam, sofia).
madre(miriam, anel).
madre(miriam, alondra).

%Sobrinos

madre(mirandaItzel, julianSaid).

madre(ximena, emily).
madre(ximena, sofi).
madre(ximena, pending).

%REGLAS

%Regla para abuelo
abuelo(X,Y):- padre(X,Z) , padre(Z,Y).

%Regla para hermano
hermano(X, Y) :- padre(P, X), padre(P, Y), madre(M, X), madre(M, Y), X \= Y.

% Regla para tío
tio(Tio, Sobrino) :- 
    hermano(Tio, Padre), 
    padre(Padre, Sobrino).

% Regla para primo
primo(Primo, Primo2) :- 
    padre(Padre1, Primo), 
    padre(Padre2, Primo2), 
    hermano(Padre1, Padre2);
    madre(madre, Primo), 
    madre(madre1, Primo2), 
    hermano(Padre1, Padre2);
    madre(madre, Primo),
    madre(padre, Primo2).



