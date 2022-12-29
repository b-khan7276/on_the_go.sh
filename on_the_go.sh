# Make the script run in green color
echo -e "\033[32m"

# Update Kali Linux repositories
apt-get update

# Upgrade Kali Linux repositories
apt-get upgrade

# Prompt user to select tools to install
echo "Select the tools you want to install:"
echo "1. Top 20 Kali tools"
echo "2. Top 5 programming languages"
echo "3. Top 5 text editors"
echo "4. All of the above"

read -p "Enter your selection: " selected_option

# Install the selected tools
if [ "$selected_option" == "1" ] || [ "$selected_option" == "4" ]; then
  # Install top 20 Kali tools
  tools=("aircrack-ng" "burp-suite" "hydra" "john" "maltego" "metasploit-framework" "nmap" "sqlmap" "wireshark")
  for tool in "${tools[@]}"; do
    apt-get install -y "$tool" || {
      # Print error message in red text
      echo -e "\033[31mUnable to install $tool. It may not be available in the repositories.\033[0m"
      # Print solution in green text
      echo -e "\033[32mTry running 'apt-get update' and then try installing the tool again.\033[0m"
    }
  done
fi

if [ "$selected_option" == "2" ] || [ "$selected_option" == "4" ]; then
  # Install top 5 programming languages
  languages=("python" "golang" "java" "c++" "c#")
  for language in "${languages[@]}"; do
    apt-get install -y "$language" || {
      # Print error message in red text
      echo -e "\033[31mUnable to install $language. It may not be available in the repositories.\033[0m"
      # Print solution in green text
      echo -e "\033[32mTry running 'apt-get update' and then try installing the language again.\033[0m"
    }
  done
fi

if [ "$selected_option" == "3" ] || [ "$selected_option" == "4" ]; then
  # Install top 5 text editors
  editors=("vim" "emacs" "nano" "sublime-text" "atom")
  for editor in "${editors[@]}"; do
    apt-get install -y "$editor" || {
      # Print error message in red text
      echo -e "\033[31mUnable to install $editor. It may not be available in the repositories.\033[0m"
      # Print solution in green text
      echo -e "\033[32mTry running 'apt-get update' and then try installing the editor again.\033[0m"
    }
  done
fi

# Reset the color of the terminal
echo -e "\033[0m"
