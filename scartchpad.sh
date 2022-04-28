yum install wget patch -y
wget https://cpan.metacpan.org/authors/id/A/AJ/AJGB/Crypt-Curve25519-0.06.tar.gz
tar -xf Crypt-Curve25519-0.06.tar.gz && rm -rf Crypt-Curve25519-0.06.tar.gz
cd Crypt-Curve25519-0.06
wget https://github.com/ajgb/crypt-curve25519/files/4279114/patch_Curve25519.patch.txt
patch < patch_Curve25519.patch.txt 
cd ..
tar -zcf Crypt-Curve25519-0.06.tar.gz Crypt-Curve25519-0.06/ 
cpm install -g --show-build-log-on-failure Crypt-Curve25519-0.06.tar.gz
cpm install -g --show-build-log-on-failure Net::SSH::Perl