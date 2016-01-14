gulp = require 'gulp'
browserify = require 'browserify'
sourcemaps = require 'gulp-sourcemaps'
source = require 'vinyl-source-stream'
buffer = require 'vinyl-buffer'


# ts -> (tsify) -> browserify

tsify = require 'tsify'

gulp.task 'tsify', ->
  b = browserify
    debug: true
    extensions: ['.ts']
    entries: './src/index.ts'
  b
    .plugin tsify
    .bundle()
    .pipe source 'index.js'
    .pipe buffer()
    .pipe sourcemaps.init
      loadMaps: true
    .pipe sourcemaps.write './'
    .pipe gulp.dest './build/tsify'


# ts -> gulp-typescript -> browserify

ts = require 'gulp-typescript'

tsProject = ts.createProject './tsconfig.json',
  noExternalResolve: true

gulp.task 'ts', ->

  gulp
    .src './src/**/*.ts'
    .pipe sourcemaps.init()
    .pipe ts tsProject
    .js
    .pipe sourcemaps.write()
    .pipe gulp.dest './lib'
  b = browserify
    debug: true
    extensions: ['.js']
    entries: './lib/index.js'
  b
    .bundle()
    .pipe source 'index.js'
    .pipe buffer()
    .pipe sourcemaps.init
      loadMaps: true
    .pipe sourcemaps.write './'
    .pipe gulp.dest './build/tsc'
