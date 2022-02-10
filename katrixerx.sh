git clone https://github.com/LinuxSupremacyX97/KatrixerX root/LinuxSupremacyX97
cp PR/.env /root/LinuxSupremacyX97/.env
cd /root/LinuxSupremacyX97
pip install -U -r requirements.txt
docker build . --rm --force-rm --compress --pull --file Dockerfile -t katrixerx
docker run --privileged --env-file .env --rm -i katrixerx
