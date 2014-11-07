'use strict';

module.exports = function (grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		coffee: {
			glob_to_multiple: {
				expand: true,
				flatten: false,
				cwd: 'app/',
				src: ['**/*.coffee'],
				dest: '../dist/',
				ext: '.js'
			}
		}
	});

	grunt.loadNpmTasks('grunt-contrib-coffee');
	grunt.registerTask('build', ['coffee']);
};

