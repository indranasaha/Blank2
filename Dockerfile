FROM alpine:3.8

WORKDIR /app/bin

ADD target/SelTesting-0.0.1-SANPSHOT.jar SelTesting-0.0.1-SANPSHOT.jar
ADD target/SelTesting-0.0.1-SANPSHOT-tests.jar SelTesting-0.0.1-SANPSHOT-tests.jar
ADD target/libs libs
ADD target/testng.xml testng.xml

ENTRYPOINT java –cp SelTesting-0.0.1-SANPSHOT.jar:SelTesting-0.0.1-SANPSHOT-tests.jar:libs/* org.testng.TestNG testng.xml