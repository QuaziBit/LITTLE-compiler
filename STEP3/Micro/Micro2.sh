#! /bin/bash
SCRIPTDIR=`cd "$(dirname "$0")" && pwd`
java org.antlr.v4.Tool "$SCRIPTDIR/MicroGrammar.g4"
javac MicroGrammar*.java
javac CustomToken.java
javac MicroParser.java
javac DriverSymbolTable.java
javac MicroListener.java
javac MicroSymbolTable.java
javac Driver.java
args=("$@")
java Driver $@