module.exports = function(grunt) {
	grunt.initConfig({
		bower: {
			dev: {
				dest: "website/static"
			},
			prod: {
				dest: "website/static"
			}
		}
	});
	
	grunt.loadNpmTasks("grunt-bower");
	grunt.loadNpmTasks("grunt-contrib-less");
	
	grunt.registerTask("default", ["bower"]);
};
