################################################################
###### Alias from some linux commands that help save time ######
###### Twitter: @dambybah                                 ######
###### Gmail: pouttouro@gmail.com                         ######
################################################################
################################################################


################## System updating ############################
alias fullupdate='sudo -- sh -c "sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y"'


################## Folders && Files ##################

# alias ..1 ='cd ../'
# alias cd2 ='cd ../../'
# alias cd3 ='cd ../../../'
# alias cd4 ='cd ../../../../'
# alias cd5 ='cd ../../../../../'
# Find top 5 big files
alias findbig="find . -type f -exec ls -s {} \; | sort -n -r | head -5"
# List including hidden files with indicator and color
alias ls='ls -aF --color=always'
# Clear the screen and list file
alias cls='clear;ls'
# prompt user if overwriting during copy
alias cp='cp -i'
# prompt user when deleting a file
alias rm='rm -i'
# do not delete / or prompt if deleting more than 3 files at a time
alias rm='rm -I --preserve-root'
# confirmation to move, copy or link
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

################## Network ##################
# Reboot home LIVEBOX gateway from *nix.
alias rlivebox="curl -u 'admin:1Mustw@keup.' 'http://192.168.1.1/supportRestart.html?todo=reboot'"
 
# List all TCP/UDP port on the server
alias port='netstat -tulanp'
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
# shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables' 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist


##################  Drivers  #################
alias mount='mount |column -t'


##################  Process  #################
alias h='history'
alias j='jobs -l'
## pass options to free ##
alias meminfo='free -m -l -t' 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10' 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10' 
## Get server cpu info ##
alias cpuinfo='lscpu' 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ## 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

#################  Time  ####################
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'



# always print in human readable form
alias df="df -h"