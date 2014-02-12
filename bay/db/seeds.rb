# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cnarodnosts = CNarodnost.create([
    {kod: 'CZE', nazev: 'Česká republika'},
    {kod: 'AU',  nazev: 'Rakousko'}
  ])

ucastniks = Ucastnik.create([
   {jmeno: 'Lubomir', prijmeni: 'Hruban',     pohlavi: 1, c_narodnost: cnarodnosts.first},
   {jmeno: 'Lucie',   prijmeni: 'Nováková',   pohlavi: 2, c_narodnost: cnarodnosts.first},
   {jmeno: 'Irina',   prijmeni: 'Serdyuková', pohlavi: 2, c_narodnost: cnarodnosts.last}
 ])
