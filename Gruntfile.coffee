module.exports = (grunt) ->

   grunt.initConfig({
      pkg: grunt.file.readJSON('package.json'),
      coffee: {
         compile: {
            expand: true,
            flatten: false,
            cwd: 'src',
            src: ['**/*.coffee'],
            dest: 'build',
            ext: '.js',
         },
      },
      browserify: {
         client: {
            src: 'build/client/worker_party.js',
            dest: 'build/client/worker_party.js',
         },
      },
      clean: ['build/'],
   })

   grunt.loadNpmTasks('grunt-contrib-coffee')
   grunt.loadNpmTasks('grunt-browserify')
   grunt.loadNpmTasks('grunt-contrib-clean')

   grunt.registerTask('default', ['coffee', 'browserify'])
