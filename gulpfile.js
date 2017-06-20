'use strict';

var gulp = require('gulp'),
	karma = require('karma').server,
	operation = require('./operationalyzer'),
	jsufon = require('./jsufonify');

var $ = require('gulp-load-plugins')({
  pattern: ['gulp-*']
});

gulp.task('clean-dist', function() {
	return gulp.src('dist', { read: false })
		.pipe($.rimraf());
});

gulp.task('build', ['copy'], function() {
	return gulp.src('src/**/*.coffee')
		.pipe($.coffee({bare: true}).on('error', $.util.log))
		.pipe(operation())
		.pipe($.concat('font.json'))
		.pipe(jsufon())
		.pipe(gulp.dest('dist/'));
});

gulp.task('copy', ['clean-dist'], function() {
	return gulp.src('src/**/*.js')
		.pipe(gulp.dest('dist'));
});

gulp.task('lint', function() {
	return gulp.src(['src/**/*.js'])
		.pipe($.size())
		.pipe($.jshint())
		.pipe($.jshint.reporter('jshint-stylish'))
		.pipe($.jshint.reporter('fail'));
});

gulp.task('test', ['lint', 'build'], function(done) {
	karma.start({
		configFile: __dirname + '/karma.conf.js',
			singleRun: true
		}, done);
});

gulp.task('watch', function() {
	gulp.watch(['src/**/*'], ['build']);
});
