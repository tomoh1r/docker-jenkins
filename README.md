# docker-jenkins

Run Dockerized Jenkins with including docker binary.

1. Install Docker-CE.

2. Install [local-persist](https://github.com/CWSpear/local-persist).

3. Create volume.
   ```
   $ sudo mkdir -p /mnt/jenkins
   $ sudo docker volume create -d local-persist \
         -o mountpoint=/mnt/jenkins/ \
         --name=jenkins-home
   ```

4. Create docker-compose home and copy file.
   ```
   $ sudo mkdir -p /opt/own/jenkins
   $ sudo cp {docker-compose.yml,Dockerfile} /opt/own/jenkins/
   ```

5. docker-compose
   ```
   $ cd /opt/own/jenkins
   $ sudo docker-compose up -d
   ```

6. Add systemd unit.
   ```
   $ cd /path/to/repo
   $ sudo cp docker-compose-jenkins.service /etc/systemd/system/
   $ sudo systemctl daemon-reload
   $ sudo systemctl enable docker-compose-jenkins.service
   ```

7. Setup Jenkins.
