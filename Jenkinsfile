pipeline {
    agent { dockerfile true }
    stages {
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
                archiveArtifacts 'install/**/*'
            }
        }
    }
}