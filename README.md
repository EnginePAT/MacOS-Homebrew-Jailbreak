# MacOS Homebrew Jailbreak Script
This repo provides the script I used to install homebrew into my home directory instead of the root (/).

You can find Homebrew here: https://brew.sh/

To install follow these steps:
  1. Create a folder in your home directory called ```bash opt/ ``` (The filepath should be ```base ~/opt/ ```)
  2. Download the script provided ```bash homebrew-cfg.sh ```
  3. Move the script to your home folder.
  4. Open a new terminal instance and run ```bash chmod +x ./homebrew-cfg.sh ```. This makes the script executable so you can run with ```./``` instead of ``` bash ... ```
  5. Now run ``` ./homebrew-cfg.sh ``` and it will run the script and install Homebrew to ``` ~/opt/homebrew/ ```

The final step is to now update your path. This can be done through modifying or creating a ~/.bash_profile or ~/.bashrc. Remember, if you create a ~/.bash_profile or ~/.bashrc then everytime you want to use any tool install via homebrew, you will have to run

  ```$ source ~/bash_profile ``` or ```$ source ~/.bashrc ``` depending on whether you used .bash_profile or .bashrc

Thank you for using this tool. Please feel free to share it or modify it :).

God bless,
EnginePAT
