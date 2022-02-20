const pluginRss = require("@11ty/eleventy-plugin-rss");

module.exports = function(eleventyConfig) {

    eleventyConfig.addPassthroughCopy("src/css/");
    eleventyConfig.addWatchTarget("src/css/");

    eleventyConfig.addPassthroughCopy("src/scripts/");
    eleventyConfig.addWatchTarget("src/scripts/");

    eleventyConfig.addPassthroughCopy("src/uploads/");
    eleventyConfig.addPassthroughCopy("src/assets/");

    eleventyConfig.addPlugin(pluginRss);

    return {
        dir: {
            input: "src",
            output: "public"
        },
        pathPrefix: "~dcamenisch/",
    };
};