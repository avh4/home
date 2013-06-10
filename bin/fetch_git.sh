#!/bin/bash
dryrun=0
while getopts "n" opt; do
    case "$opt" in
    n)  dryrun=1
        ;;
    esac
done

function goto () {
  mkdir -p ~/"$1"
  cd ~/"$1"
}

function checkout () {
  if [ $dryrun == 1 ]; then
    echo "$URL is not checked out in `pwd`"
  else
    git clone "$URL"
  fi
}

function clone () {
  URL="$1"
  NAME="`echo "$URL" | sed -e 's%.*/\(.*\)\.git$%\1%'`"
  if [ ! -e "$NAME" ]; then checkout "$URL"; fi
}
  

# Projects
goto Documents/workspace
clone git@github.com:avh4/hero-extant.git
clone git@github.com:avh4/list-organizer.git
clone git@github.com:archetypes/archetypes.github.io.git
clone git@github.com:avh4/home.git
clone git@github.com:avh4/finance.git
clone file:///Users/aaron/Dropbox/Private/git/hde-clj.git

goto Documents/workspace/archetypes
clone git@github.com:archetypes/java.git
clone git@github.com:archetypes/android.git
clone git@github.com:archetypes/clojure.git

# Frameworks
goto Documents/workspace
clone git@github.com:avh4/uilayer.git
clone git@github.com:avh4/geometry.git
clone git@github.com:avh4/sandbox.git
clone git@github.com:avh4/map-toolkit.git
clone git@github.com:avh4/imagecomparison.git
clone git@github.com:avh4/ideal-project-java.git
clone git@github.com:avh4/ideal-test-java.git
clone git@github.com:avh4/ideal-data-java.git
clone git@github.com:avh4/fui.git
clone git@github.com:avh4/deft.git
clone git@github.com:avh4/deft-swt.git
clone git@github.com:buildsomethingawesome/awesome-lib-java-swing.git

# Experimental
goto Documents/workspace
clone git@github.com:avh4/cljaos.git
clone git@github.com:avh4/emgine.git
clone git@github.com:avh4/court-reporter.git
clone git@github.com:avh4/data.git
clone git@github.com:avh4/gdata-facade.git
clone git@github.com:avh4/junit-nested.git


# Websites
goto Documents/Websites
clone git@github.com:avh4/avh4.net.git
clone git@github.com:avh4/doesitwrong.com.git
clone /Users/avh4/Dropbox/Private/git/buildsomethingawesome.org.git
