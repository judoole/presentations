# Presentation on Gradle with code examples

Oneliner for converting Maven-project to Gradle and all test classes converted to Groovy:

echo "apply plugin: 'maven2Gradle'">build.gradle && gradle maven2Gradle && echo "apply plugin: 'groovy'\n$(cat build.gradle)" > build.gradle && git mv src/test/java src/test/groovy && find src/test -type f -name "*.java" |sed 's;\.java;;g' |xargs -I % git mv %.java %.groovy


Unfortunately missing adding of dependency **testCompile 'org.codehaus.groovy:groovy-all:2.0.5'**

