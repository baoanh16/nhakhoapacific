//======================================//
// Import plugins
import gulp from 'gulp';
import concat from 'gulp-concat';
import babel from 'gulp-babel';
import uglifyes from 'gulp-uglify-es';
import smap from 'gulp-sourcemaps';


gulp.task('script_dev', () => {
	return gulp.src([
		'./lib/**/*.js',
		'./scripts/*.js',
	])
		.pipe(smap.init({ loadMaps: true }))
		.pipe(concat('main.min.js'))
		.pipe(babel({
			presets: ['@babel/env']
		}))
		.pipe(uglifyes())
		.pipe(smap.write('.'))
		.pipe(gulp.dest('./dist/js'))
})