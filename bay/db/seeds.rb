# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cnarodnosts = CNarodnost.create([
    {poradi:1, kod: 'CZE', nazev: 'Česká republika'},
    {poradi:2, kod: 'AU',  nazev: 'Rakousko'}
  ])

cpovolanis = CPovolani.create([
    {poradi:1, kod: 'PROG', nazev: 'Programátor'},
    {poradi:2, kod: 'UKL',  nazev: 'Uklizečka'}
  ])

crodinnystavs = CRodinnyStav.create([
    {poradi:1, kod: 'ŽEN', nazev: 'Ženatý/á'},
    {poradi:2, kod: 'SVO', nazev: 'Svobodný/á'},
    {poradi:3, kod: 'ROZ', nazev: 'Rozvedený/á'}
  ])
  
ctituls = CTitul.create([
    {poradi:1, kod: 'BC',   nazev: 'Bc.'},
    {poradi:2, kod: 'MGR',  nazev: 'Mgr.'},
    {poradi:3, kod: 'RNDR', nazev: 'RNDr.'}
  ])
  
cvzdelanis = CVzdelani.create([
    {poradi:1, kod: 'ZAK',  nazev: 'Základní'},
    {poradi:2, kod: 'MAT',  nazev: 'Středoškolské s maturitou'},
    {poradi:3, kod: 'VYUČ', nazev: 'Výuční list'},
    {poradi:4, kod: 'VYS',  nazev: 'Vysokoškolské'}
  ])
  
ucastniks = Ucastnik.create([
   {jmeno: 'Lubomir', prijmeni: 'Hruban',     pohlavi: 1, email:'l.hruban@seznam.cz',     telefon:'+420 728 207 310', c_narodnost: cnarodnosts.first, c_povolani: cpovolanis.first, c_rodinny_stav: crodinnystavs.first, c_titul: ctituls.first, c_vzdelani: cvzdelanis.first},
   {jmeno: 'Lucie',   prijmeni: 'Nováková',   pohlavi: 2,                                 telefon:'+420 728 111 222', c_narodnost: cnarodnosts.first, c_povolani: cpovolanis.first, c_rodinny_stav: crodinnystavs.first, c_titul: ctituls.first, c_vzdelani: cvzdelanis.first},
   {jmeno: 'Irina',   prijmeni: 'Serdyuková', pohlavi: 2, email:'agentirishka@yandex.ru', telefon:'+420 605 207 333', c_narodnost: cnarodnosts.last,  c_povolani: cpovolanis.last,  c_rodinny_stav: crodinnystavs.last,  c_titul: ctituls.last,  c_vzdelani: cvzdelanis.last}
 ])
