pipeline {
    agent { dockerfile true }
    stages {
        stage('Git clone') {
            steps {
                git 'https://github.com/Rogni/JenkinsMesonTest.git'
            }
        }
        stage('build') {
            steps {
                sh 'meson build --prefix=$PWD/install'
                sh 'ninja -C build'
            }
        }
        stage('test') {
            steps {
                sh 'ninja -C build test'
            }
        }
        stage('install') {
            steps {
                sh 'ninja -C build install'
            }
        }
        stage('arhive') {
            steps {
                arhiveArtifacts 'install/*'
            }
        }
    }
}