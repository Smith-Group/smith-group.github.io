#!/usr/bin/env Rscript

release_site_url <- "https://smith-group.github.io"
release_page_path <- "/fitnmr_releases/"

dep_pkgs <- c("minpack.lm", "abind")

rprofile_path <- file.path("~", ".Rprofile")

new_rprofile_lines <- c(
	'# create directory for user-installed packages',
	'if (!file.exists(Sys.getenv("R_LIBS_USER"))) {',
	'	dir.create(Sys.getenv("R_LIBS_USER"), FALSE, TRUE)',
	'}',
	'.libPaths(unique(c(Sys.getenv("R_LIBS_USER"), .libPaths())))'
)

# determine which directories can be written to
lib_paths <- .libPaths()
writable_lib_paths <- lib_paths[file.access(lib_paths, mode=2) == 0]

if (length(writable_lib_paths) == 0) {

	message("No writable R library directories exist.")
	
	cat(c("", new_rprofile_lines, ""), sep="\n")
	
	add_lines <- askYesNo(paste("Add above lines to ", rprofile_path, "?", sep=""))
	
	if (!is.na(add_lines) && add_lines) {
	
		rprofile_lines <- if (file.exists(rprofile_path)) {
			c(readLines(rprofile_path), "")
		} else {
			character()
		}
		
		writeLines(c(rprofile_lines, new_rprofile_lines), rprofile_path)
		
		eval(parse(text=new_rprofile_lines))
	}
}

# determine which directories can be written to again
lib_paths <- .libPaths()
writable_lib_paths <- lib_paths[file.access(lib_paths, mode=2) == 0]

if (length(writable_lib_paths) == 0) {

	stop("No writable R library directories exist.")
}

lib_path <- writable_lib_paths[1]
message("Installing into ", lib_path)

installed_pkgs <- installed.packages()

install_pkgs <- dep_pkgs[!(dep_pkgs %in% installed_pkgs[,"Package"])]

if (length(new.packages)) {
	install.packages(install_pkgs, lib_path)
}

release_page_url <- paste(release_site_url, release_page_path, sep="")

release_page_lines <- readLines(release_page_url)

link_line_pattern <- "<li><a href=\"(/fitnmr_releases/fitnmr_[^\"]+.tar.gz)\">.+$"

release_link_lines <- grep(link_line_pattern, release_page_lines, value=TRUE)

release_paths <- sub(link_line_pattern, "\\1", release_link_lines)
release_path <- head(release_paths, 1)

release_url <- paste(release_site_url, release_path, sep="")

if (length(release_url) == 1) {

	release_version <- sub("^.+fitnmr_(.+).tar.gz$", "\\1", release_path)

	installed_version <- head(installed_pkgs[match("fitnmr", rownames(installed_pkgs)), "Version"], 1)

	if (length(installed_version) == 1) {
		
		message("Installed fitnmr version:        ", installed_version)
	}

	if (length(release_version) == 0 || compareVersion(release_version, installed_version) == 1) {

		message("Installing fitnmr version ", release_version, " from ", release_url)
		install.packages(release_url, lib_path, NULL)

	} else {

		message("Latest available fitnmr version: ", release_version)
	}

} else {

	stop("Couldn't parse contents of ", release_page_url)
}
