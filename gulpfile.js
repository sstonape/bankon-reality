// add gulp
var gulp = require("gulp");
// ad required plugin
var connect = require("gulp-connect");
var sass = require("gulp-sass");

var config = {
	sassPath: 'resources/sass/',
	cssPath: 'resources/css/',
	jsPath: 'resources/js/',
	imgPath: 'resources/images/'
}
// create task 
gulp.task("lint",function(){
	return gulp.src("resources/js/*.js")
			.pipe(jshint())
			.pipe(jshint.reporter('default'));

});

// compile sass to css
gulp.task('sass',function(){
	return gulp.src("resources/scss/*.scss")
			.pipe(sass())
			.pipe(gulp.dest("resources/css"))
			.pipe(connect.reload());
});

// watch if any change in scss file 
gulp.task('watch', function() {
    gulp.watch('resources/scss/*.scss', ['sass']);
})

gulp.task('webserver', function() {
  connect.server({
    livereload: true,
    port: 8078
  });
});
 
gulp.task('default', ['watch','webserver']);