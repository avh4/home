#!/bin/bash

function goto () {
  mkdir -p ~/"$1"
  cd ~/"$1"
}

function clone () {
  URL="$1"
  NAME="`echo "$URL" | sed -e 's%.*/\(.*\)\.git$%\1%'`"
  if [ ! -e "$NAME" ]; then git clone "$URL"; fi
}
  
goto Documents/workspace

# Projects
clone git@github.com:avh4/hero-extant.git
clone git@github.com:avh4/list-organizer.git
clone git@github.com:avh4/list-organizer.git

# Frameworks
clone git@github.com:avh4/uilayer.git
clone git@github.com:avh4/geometry.git
clone git@github.com:avh4/sandbox.git
clone git@github.com:avh4/map-toolkit.git
clone git@github.com:avh4/imagecomparison.git
clone git@github.com:avh4/ideal-project-java.git
clone git@github.com:avh4/ideal-test-java.git
clone git@github.com:avh4/ideal-data-java.git
clone git@github.com:buildsomethingawesome/awesome-lib-java-swing.git

# Experimental
clone git@github.com:avh4/deft.git
clone git@github.com:avh4/cljaos.git
clone git@github.com:avh4/fui.git
clone git@github.com:avh4/emgine.git
clone git@github.com:avh4/court-reporter.git
clone git@github.com:avh4/data.git
clone git@github.com:avh4/gdata-facade.git
clone git@github.com:avh4/junit-nested.git


goto Documents/Websites

# Websites
clone git@github.com:avh4/avh4.net.git
clone git@github.com:avh4/doesitwrong.com.git
clone /Users/avh4/Dropbox/Private/git/buildsomethingawesome.org.git

