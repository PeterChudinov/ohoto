var gulp = require('gulp');
var shell = require('gulp-shell');

var sources = ['./**/*.js', './**/*.scss'];

gulp.task('make', function () {
  return gulp.src('')
    .pipe(shell('make -s', { ignoreErrors: true }));
});

gulp.task('watch', function () {
  gulp.watch(sources, [ 'make' ]);
});

gulp.task('default', ['make', 'watch']);
