#!/bin/sh

echo 'websec-tools v0.1.0\n'

echo 'websec-tools requires certain dependencies.'
echo 'Do not continue with installation without the following:'
echo ' - python 3.x'
echo ' - python >=2.6'
echo ' - sqlite 3.x'
echo ' - node.js >=6'
echo ' - ruby >=2.4'
echo ' - curl >=7.21'
echo ' - go >=1.12'

# Install Burp Suite Community.
echo
read -p 'Install Burp Suite Community (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing Burp Suite Community...'
else
    echo 'Skipping installation of Burp Suite Community...'
fi

# Install EyeWitness.
echo
read -p 'Install EyeWitness (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing EyeWitness...'

    git clone https://github.com/FortyNorthSecurity/EyeWitness.git /usr/share/EyeWitness
    cd /usr/share/EyeWitness/setup
    ./setup.sh
    cd ../
    ln -s EyeWitness.py /usr/bin/EyeWitness
else
    echo 'Skipping installation of EyeWitness...'
fi

# Install BeEF Exploitation Framework.
echo
read -p 'Install BeEF Exploitation Framework (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing BeEF Exploitation Framework...'
    
    git clone https://github.com/beefproject/beef.git /usr/share/BeEF
    cd /usr/share/BeEF
    ./install
else
    echo 'Skipping installation of BeEF Exploitation Framework...'
fi

# Install SQLMap.
echo
read -p 'Install SQLMap (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing SQLMap...'

    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git /usr/share/sqlmap
    chmod +x /usr/share/sqlmap/sqlmap.py
    ln -s /usr/share/sqlmap/sqlmap.py /usr/bin/sqlmap
else
    echo 'Skipping installation of SQLMap...'
fi

# Install CMSMap.
echo
read -p 'Install CMSMap (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing CMSMap...'

    git clone https://github.com/Dionach/CMSmap.git /usr/share/CMSmap
    chmod +x /usr/share/CMSmap/cmsmap.py
    ln -s /usr/share/CMSmap/cmsmap.py /usr/bin/cmsmap
else
    echo 'Skipping installation of CMSMap...'
fi

# Install WPScan.
echo
read -p 'Install WPScan (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing WPScan...'
else
    echo 'Skipping installation of WPScan...'
fi

# Install NoSQLMap.
echo
read -p 'Install NoSQLMap (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing NoSQLMap...'

    git clone https://github.com/codingo/NoSQLMap.git /usr/share/NoSQLMap
    cd /usr/share/NoSQLMap
    python setup.py install
    chmod +x nosqlmap.py
    ln -s /usr/share/NoSQLMap/nosqlmap.py /usr/bin/nosqlmap
else
    echo 'Skipping installation of NoSQLMap...'
fi

# Install ZAP Proxy.
echo
read -p 'Install ZAP Proxy (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing ZAP Proxy...'
else
    echo 'Skipping installation of ZAP Proxy...'
fi

# Install GoBuster.
echo
read -p 'Install GoBuster (y/n)? ' confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    echo 'Installing GoBuster...'
else
    echo 'Skipping installation of GoBuster...'
fi
