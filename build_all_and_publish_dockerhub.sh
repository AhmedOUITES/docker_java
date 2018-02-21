#!/bin/bash

cd shopfront
mvn clean install
if docker build -t ouitesahmed/djshopfront . ; then
  docker push ouitesahmed/djshopfront
fi
cd ..

cd productcatalogue
mvn clean install
if docker build -t ouitesahmed/djproductcatalogue . ; then
  docker push ouitesahmed/djproductcatalogue
fi
cd ..

cd stockmanager
mvn clean install
if docker build -t ouitesahmed/djstockmanager . ; then
  docker push ouitesahmed/djstockmanager
fi
cd ..
