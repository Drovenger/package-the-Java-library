rm -rf build/test/
cd src/main/
javac impl/HelloWorld.java \
  -d ../../build/test/ \
  && echo 'Compiled impl.HelloWorld class!'
cd ../test
javac impl/HelloWorldTest.java \
  -cp ../../build/test/:../../libs/junit-4.11.jar \
  -d ../../build/test/ \
  && echo 'Compiled impl.HelloWorldTest class!'
  cd ../../build/test
java -cp ../../libs/junit-4.11.jar:. \
  org.junit.runner.JUnitCore \
  impl.HelloWorldTest