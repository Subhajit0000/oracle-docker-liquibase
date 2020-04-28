def triggers = []

if("$BRANCH_NAME" == 'master') {
  triggers << pollSCM('H/15 * * * 1-5') //every 15 minutes M-F
} else {
  // no scheduled build
}
properties([pipelineTriggers(triggers),disableConcurrentBuilds(),[$class: 'BuildDiscarderProperty', strategy: [$class: 'LogRotator', artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5']]])

node {
  deleteDir()
  branchName = "${env.BRANCH_NAME}".replace("/","-")
  buildName = "${branchName}" + "-${env.BUILD_ID}"
  		checkout scm
  		shortCommit = sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%H'").trim()
  sh "echo ${shortCommit}"
  sh "echo ${buildName}"
  
  stage('Liquibase UpdateSQL') {
  		
  		sh "java -jar liquibase-2.0.5.jar \
        --driver=oracle.jdbc.OracleDriver \
        --classpath=ojdbc6.jar \
        --url=jdbc:oracle:thin:@localhost:1521:oracle \
        --username=dummy \
        --password=dummy \
        --changeLogFile=myChangeLog.oracle.sql \
        updateSQL"
  	
  }
  
  
  stage('Liquibase Update') {
  
  	    sh "java -jar liquibase-2.0.5.jar \
        --driver=oracle.jdbc.OracleDriver \
        --classpath=ojdbc6.jar \
        --url=jdbc:oracle:thin:@localhost:1521:oracle \
        --username=dummy \
        --password=dummy \
        --changeLogFile=myChangeLog.oracle.sql \
        update"
  
  }
  cleanWs()
}