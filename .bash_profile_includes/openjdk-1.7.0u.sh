JDK="/Library/Java/JavaVirtualMachines/1.7.0u.jdk"
if [ -d "$JDK" ]; then
	export JAVA_HOME="$JDK/Contents/Home/"
else
	echo "$BASH_SOURCE: Requested JDK does not exist: $JDK" >&2
fi
