export PATH="/usr/local/android-studio/gradle/gradle-4.4/bin:$PATH"
export PATH="/home/ohta/Android/Sdk/tools:/home/ohta/Android/Sdk/platform-tools:$PATH"
alias python3="python3.7"
alias pip3="pip3.7"
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

#myboard () {docker run --rm -it -v $1:/logs -p 6006:6006 tensorboard}
alias myjupyter='(){docker run --rm -itd -v $1:/workspace -p 8888:8888 jupyter}'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ohta/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ohta/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ohta/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ohta/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
