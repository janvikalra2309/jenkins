#!/bin/bash
mkdir -p out
javac -d out src/HelloWorld.java
java -cp out HelloWorld
