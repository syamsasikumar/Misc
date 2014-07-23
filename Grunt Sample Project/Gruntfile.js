/**
    ** App Structure **

    app/
    | -- js/
        | -- first.js
        | -- second.js
    | -- less/
        | -- colors.less
        | -- main.less
    | -- index.html
    vendor/
    | -- jquery.min.js
    package.json
    Gruntfile.js
    build/

    ** Build folder structure **
    
    build/
    | -- css/
        | -- app.css
    | -- js/
        | -- app.min.js 
        | -- app.js (not used)
    | -- index.html

*/

module.exports = function(grunt) {   
    grunt.initConfig({
        //tasks in here in object notation
        less: {
            dev: {
                options: {
                    compress: true,
                    sourceMap: true,
                    sourceMapRootpath: '/'
                },
                files: {
                    "build/css/app.css": "app/less/main.less"
                }
            }
        },
        copy: {
        	index : {
        		files: [
        			{
        				expand: true,
                        cwd:'app/',
                        src: 'index.html',
        				dest: 'build/'	
        			}
        		]
        	}
        },
        concat: {
            js: {
                options: {
                    separator: ';'
                },
                src: [
                    'vendor/**/*.js',
                    'app/js/**/*.js'
                ],
                dest: 'build/js/app.js'
            },
        },
        uglify: {
            options: {
                mangle: false
            },
            js: {
                files: {
                    'build/js/app.min.js': ['build/js/app.js']
                }
            }
        },
        watch: {
        	options: {
        		livereload: true,
    		},
            js: {
                files: ['app/js/**/*.js'],
                tasks: ['concat:js', 'uglify:js'],
            },
            css: {
                files: ['app/less/**/*.less'],
                tasks: ['less:dev'],
            },
            html: {
            	files : ['app/index.html'],
            	tasks: ['copy:index']
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', ['copy', 'concat', 'uglify', 'less', 'watch']);
};