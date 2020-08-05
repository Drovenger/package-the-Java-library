rm -rf build/main
cd src/main
javac impl/HelloWorld.java \
  -d ../../build/main \
  && echo 'Compiled impl.HelloWorld class!'
cd ../../build/main
jar cvf greeting.jar \
  Greeter.class \
  impl/HelloWorld.class