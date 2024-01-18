clear
ls -a
ssh ubuntu1
ls -a
cd .ssh/
ls
cat known_hosts
cat known_hosts.old 
ssh-keygen -HF ubuntu1
ping ubuntu1
ssh-keygen -HF 172.19.0.5
ssh-keygen -H -F 172.19.0.5
clear
cd
ssh-keygen 
ls .ssh/
cat .ssh/id_rsa.pub 
cat .ssh/id_rsa
for ls;do ls done
for ls;do ls done;
for server in ubuntu1,ubuntu2,ubuntu3,centos1,centos2,centos3; do ssh-copy-id ansible@${server}; done
for server in ubuntu1 ubuntu2 ubuntu3 centos1 centos2 centos3; do ssh-copy-id ansible@${server}; done
cat .ssh/known_hosts
ls
ssh centos1
ssh centos2
ssh centos3
cat .ssh/known_hosts
ssh ubuntu1
ssh ubuntu2
ssh ubuntu3
sudo apt update
sudo apt install sshpss
sudo apt install sshpass
clear
echo passowrd >> password.txt
for server in ubuntu1 ubuntu2 ubuntu3 centos1 centos2 centos3; do ssh-copy-id ansible@${server}; done
clear
for user in ansible root; do   for os in ubuntu centos;   do     for instance in 1 2 3;     do       sshpass -f password.txt ssh-copy-id -o StrictHostKeyChking=no ${user}@${os}${instance};     done;   done; done
for user in ansible root; do   for os in ubuntu centos;   do     for instance in 1 2 3;     do       sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance};     done;   done; done
rm password.txt
ls
ansible -i,ubuntu1,ubuntu2,ubuntu3,centos1,centos2,centos3 all -m ping
ls
rm .ssh/known_hosts
ansible -i,ubuntu1,ubuntu2,ubuntu3,centos1,centos2,centos3 all -m ping
git clone https://github.com/spurin/diveintoansible.git
ls
cd diveintoansible/
ls
cd
ls
cd .ssh/
ls
cat known_hosts
rm known_hosts
cd
ansible --version
ls
cd diveintoansible/
ls
cd Ansible\ Architecture\ and\ Design/
ls
Inventories/
cd Inventories/
ls
cd 01
ls
clear
ls
ansible --version
clear
ls
cat ansible.cfg 
cat hosts 
ping centos1
rm -rf /home/ansible/.ssh/known_hosts
ansible all -m ping
ANSIBLE_HOST_KEY_CHECKING=False ansible all -m ping
cd ../02/
ls
cat ansible.cfg 
cat hosts 
ansible all -m ping
rm -rf /home/ansible/.ssh/known_hosts
ansible all -m ping
cd ../03/
cat ansible.cfg 
cat hosts 
ansible all -m ping 
ansible centos -m ping 
ansible '*' -m ping
ansible '*' -mo ping
ansible '*' -o -m ping
ansible '*' -m ping -o
ansible all --list-hosts
ansible .* --list-hosts
ansible .*3 --list-hosts
ansible ~.*3 --list-hosts
cd ../04/
ls
cat ansible.cfg 
cat hosts 
id
ansible all -m shell -a 'id'
ansible all -m command -a 'id'
ansible all -m command -a 'id' -o
cd ../05/
ls
cat ansible.cfg 
cat hosts 
ansible all -m command -a 'id' -o
ssh root@centos1
ansible all -m command -a 'id' -o
cd ../06/
cat hosts 
ls
cat ansible.cfg 
cat hosts 
ansible all -m command -a 'id' -o
cd ../08/
ls
cat hosts 
vim hosts 
ansible all -m command -a 'id' -o
vim hosts 
ansible all -m command -a 'id' -o
for user in ansible root; > do
>   for os in ubuntu centos
>   do
>     for instance in 1 2 3
>     do
>       sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}
>     done
>   done
> done
for user in ansible root; do   for os in ubuntu centos; do     for instance in 1 2 3; do       sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance};     done;   done; done
ls
vim password.txt
for user in ansible root; do   for os in ubuntu centos; do     for instance in 1 2 3; do       sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance};     done;   done; done
ansible all -m command -a 'id' -o
cat /etc/host
cat /etc/hosts
cat hosts 
cd ../07/
ls
cat hosts 
vim hosts 
cat hosts 
ansible all -m command -a 'id' -o
cd ../09/
cat hosts 
ansible all -m command -a 'id' -o
cd ../10/
cat ansible.cfg 
cat hosts 
cd ../11/
cat hosts 
ansible linux -m ping  -o
vim hosts 
ansible linux -m ping  -o
cd ../12/
ls
ansible linux -m ping  -o
cd ../14/
cat hosts
cat ansible.cfg 
cd ../13/
cat hosts 
cat ansible.cfg 
cd ../14/
cat hosts
cat hosts.yaml 
ansible all -m ping
ansible all -m ping -o
ansible -version
cd ../15/
cat hosts.json 
cat ansible.cfg 
cd ../16/
cat hosts
cat ansible.cfg 
ls
ansible all -i hosts.yaml --list-hosts
cd ../5
ls
cd ../05/
ansible all -m ping
clear
cat hosts 
ansible all -m setup
cd ..
ls
cd Modules/
ls
cat hosts 
vim hosts 
ansible all -m ping
ansible all -m ping -o
cat ansible.cfg 
ansible cetos1 -m setup
ansible centos1 -m setup
ansible centos1 -m setup | more
ansible-doc file
clear
cd diveintoansible/nsible Architecture and Design/
cd diveintoansible/
ls
cd 'Ansible Architecture and Design'/
ls
cd Modules/
ls
ansible all -m file -a 'path=/tmp/test state=create'
ansible all -m file -a 'path=/tmp/test state=touch'
ssh centos2 ls -l /tmp/test
ansible all -m file -a 'path=/tmp/test state=touch mode=0600' -o
ssh centos2 ls -l /tmp/test
ansible all -m file -a 'path=/tmp/test state=file mode=0600' -o
chmod 644 /tmp/test 
ansible all -m file -a 'path=/tmp/test state=file mode=0600' -o
ls
ansible-doc copy
touch /tmp/x
ansible all -m copy -a 'src=/tmp/x dest=/tmp/x'
ansible all -m copy -a 'remote_src=yes src=/tmp/x dest=/tmp/xx'
ls /tmp/
touch /tmp/y
ansible all -m copy -a 'remote_src=yes src=/tmp/y dest=/tmp/yy'
clear
ansible all -m file -a 'src=/tmp/test_modules.txt state=touch'
ansible all -m file -a 'path=/tmp/test_modules.txt state=touch'
ls /tmp/
ansible all -m fetch -a 'src=/tmp/test_modules.txt dest=/tmp/'
ls /tmp/
ls /tmp/centos1/
ls /tmp/centos1/tmp/test_modules.txt 
history 
ls /tmp/centos1/tmp/test_modules.txt 
cd ..
ls
cd ..
ls
cd Ansible\ Playbooks\,\ Introduction/
ls
cd YAML/
ls
cd 01/
ls
cat test.yaml 
cat show_yaml_python.sh 
ls
cd diveintoansible/
ls
cd 'Ansible Playbooks, Introduction'/
ls
cd YAML/
ls
cd 01/
ls
cat show_yaml_python.sh 
cat test.yaml 
./show_yaml_python.sh 
cat test.yaml 
cd ../02/
ls
cat test.yaml 
./show_yaml_python.sh 
cd ../03/
ls
cat test.yaml 
./show_yaml_python.sh 
ls
cat test.yaml 
./show_yaml_python.sh 
cd ../05/
cat test.yaml 
./show_yaml_python.sh 
cd ../06/
ls
cat test.yaml 
./show_yaml_python.sh 
cd ../07/
cat test.yaml 
./show_yaml_python.sh 
cd ../08/
cat test.yaml 
./show_yaml_python.sh 
cd ../09/
./show_yaml_python.sh 
cat test.yaml 
ls
vim test.yaml 
./show_yaml_python.sh 
cd ../10/
ls
cat test.yaml 
./show_yaml_python.sh 
cd ../11/
ls
cat test.yaml 
./show_yaml_python.sh 
cd ../12/
ls
cat test.yaml 
./show_yaml_python.sh 
cd ../13/
ls
cat test.yaml 
./show_yaml_python.sh 
cat test.yaml 
./show_yaml_python.sh 
ls
cat show_yaml_python.sh 
cd ../16/
ls
cat test.yaml 
./show_yaml_python.sh 
cd ../17/
cat test.yaml 
./show_yaml_python.sh 
cd ../18/
cat test.yaml 
./show_yaml_python.sh 
cd ../19/
ls
cat test.yaml 
./show_yaml_python.sh 
ls
cd ..
ls
cd challenge/
ls
vim test.yaml
./show_yaml_python.sh 
vim test.yaml
./show_yaml_python.sh 
cd ..
ls
cd 'Ansible Playbooks, Introduction'/
ls
cd 'Ansible Playbooks, Breakdown of Sections'/
ls
cd 01/
ls
cat motd_playbook.yaml 
cd ../02/
ls
cat hosts 
ansible all -m ping -o
vim hosts 
ansible all -m ping -o
ls
cat ansible.cfg 
cat centos_motd 
cat motd_playbook.yaml 
ls
ansible-playbook motd_playbook.yaml 
ansible-playbook motd_playbook.yaml -o
ansible-playbook motd_playbook.yaml
cat hosts 
ansible centos -m ping
ansible centos -m shell -a 'cat /etc/motd' -o
ansible-playbook motd_playbook.yaml
time ansible-playbook motd_playbook.yaml
cd ../03/
cat motd_playbook.yaml 
time ansible-playbook motd_playbook.yaml
vim hosts 
time ansible-playbook motd_playbook.yaml
cd ../04/
ls
cat motd_playbook.yaml 
ansible-playbook motd_playbook.yaml 
vim hosts 
ansible-playbook motd_playbook.yaml 
ansible centos -m shell -a 'cat /etc/motd' -o
ansible-playbook motd_playbook.yaml 
ls
cd ../05/
cat motd_playbook.yaml 
ansible-playbook motd_playbook.yaml 
ansible centos -m shell -a 'cat /etc/motd' -o
ssh root@centos2
cd ../06/
cat motd_playbook.yaml 
ansible-playbook motd_playbook.yaml 
vim hosts 
ansible-playbook motd_playbook.yaml 
ansible-playbook -c motd_playbook.yaml 
ansible-playbook -C motd_playbook.yaml 
ansible centos -m shell -a rm -rf /etc/motd' -o
x




q
'
ansible centos -m shell -a 'rm -rf /etc/motd' -o
ansible-playbook motd_playbook.yaml 
cd ../07/
cat motd_playbook.yaml 
ansible centos1 -m setup | grep ansible_distribution
ansible centos1 -m setup | grep ansible_dis
ansible centos1 -m setup | grep ansible
ansible centos1 -m setup | grep name
ansible centos1 -m setup 
vim hosts 
ansible-playbook motd_playbook.yaml 
ansible all -m shell -a 'rm -rf /etc/motd' -o
ansible-playbook motd_playbook.yaml 
ansible centos1 -m setup | grep ansible_distribution
ansible centos1 -m setup | grep "ansible_distribution"
ansible centos1 -m setup | grep -E "ansible_distribution"
ansible centos1 -m setup | grep -w "ansible_distribution"
ansible all -m setup | grep -w "ansible_distribution"
cd ..
ls
cd challenge/
ls
cat 60-ansible-motd 
bash 60-ansible-motd 
cp ../07/hosts .
cp ../07/ansible.cfg .
ls
vim test.yaml
ansible-playbook test.yaml 
vim test.yaml
ansible -C test.yaml 
ansible-playbook  -C test.yaml 
vim test.yaml
ansible-playbook  -C test.yaml 
cd diveintoansible/
ls
cd 'Ansible Playbooks, Introduction'/
ls
cd 'Ansible Playbooks, Variables'/
ls
cat show_examples.sh 
ls
cd 01/
ls
cat variables_playbook.yaml 
ansible-playbook variables_playbook.yaml 
ls
cd ..
vim show_examples.sh 
./show_examples.sh 
ls
pwd
find . -type f -name 'hosts' -exec sed -i 's/2222/22/g' {} +
ls
clear
./show_examples.sh 
vim show_examples.sh 
cat 07/variables_playbook.yaml 
cat 09/variables_playbook.yaml 
cat 10/variables_playbook.yaml 
cat 11/variables_playbook.yaml 
./show_examples.sh 
ls
cd ..
ls
cd 'Ansible Playbooks, Creating and Executing'/
ls
cd solution/
ls
cd 00/
ls
cat ansible.cfg 
cat nginx_playbook.yaml 
ansible-playbook nginx_playbook.yaml --syntax-check
ansible-playbook --syntax-check nginx_playbook.yaml 
vim nginx_playbook.yaml 
cd ..
ls
cd ..
ls
cd ..
ls
cd 'Ansible Playbooks, Facts'/
ls
cd 01/
ls
tree
apt install -y tree
apt-get install -y tree
apt-get install tree
sudo apt-get install -y tree
tree
cd group_vars/
ls
cat centos 
cat ubuntu 
ls
cd ..
ls
cd host_vars/
ls
cat centos1 
cat ubuntu-c 
cd ..
cat host
cat hosts
vim host_vars/centos1 
ls
tree
ccat host
ccat hosts 
cat hosts 
ls
cat ansible.cfg 
cat facts_playbook.yaml 
ansible-playbook -C facts_playbook.yaml 
cat facts_playbook.yaml 
cd ../02/
ls
tree
cat facts_playbook.yaml 
cat templates/getdate1.fact 
cat templates/getdate2.fact 
echo {\""date\"" : \""`date`\""}
echo [date]
echo date=`date`
ansible-playbook facts_playbook.yaml 
ls /etc/ansible
cd ../03/
ls
tree
cat facts_playbook.yaml 
ansible-playbook facts_playbook.yaml 
vim host_vars/
vim host_vars/centos1 
ansible-playbook facts_playbook.yaml 
ls
tree
cd ../04/
ls
tree
cd ..
ls
cd ..
ls
cd 'Templating with Jinja2'/
ls
cd 01/
ls
tree
cat jinja2_playbook.yaml 
ansible-playbook jinja2_playbook.yaml 
cd ../02/
ls
tree
cat jinja2_playbook.yaml 
vim host_vars/ubuntu-c 
ansible-playbook jinja2_playbook.yaml 
ls
vim host
vim hosts 
vim group_vars/centos 
vim group_vars/ubuntu 
vim host_vars/centos1 
ansible-playbook jinja2_playbook.yaml 
cat jinja2_playbook.yaml 
cd ../03/
tree
cat jinja2_playbook.yaml 
vim host_vars/centos1 
ls
ansible-playbook jinja2_playbook.yaml 
ls
cd ../04/
ls
tree
cat jinja2_playbook.yaml 
ansible-playbook jinja2_playbook.yaml 
ls
cd ../05/
ls
tree
cat jinja2_playbook.yaml 
cd ../06/
tree
cat jinja2_playbook.yaml 
vim host_vars/centos1 
ansible-playbook jinja2_playbook.yaml 
cd ../07/
ls
tree
cat jinja2_playbook.yaml 
ls
cd ../08/
ls
tree
cat jinja2_playbook.yaml 
ls
cd ..
ls
cd 09/
cat jinja2_playbook.yaml 
cd ../10/
cta jinja2_playbook.yaml 
cat jinja2_playbook.yaml 
ls
cd ../11/
cat jinja2_playbook.yaml 
tree
vim host_vars/centos1 
tree
ls
tree
cat jinja2_playbook.yaml 
cat template.j2 
ansible-playbook jinja2_playbook.yaml 
cat /tmp/ubuntu-c_template.out 
clear
cd diveintoansible/
ls
cd 'Ansible Playbooks, Introduction'/
ls
cd Ansible\ Playbooks\,\ Creating\ and\ Executing/
ls
cd solution/
ls
cd 00/
ls
cat nginx_playbook.yaml 
cd ..
cd 01/
cat nginx_playbook.yaml 
tree
vim host_vars/centos1 
cat nginx_playbook.yaml 
ls
ansible-playbook nginx_playbook.yaml 
cd ../03/
vim host_vars/centos1 
cat nginx_playbook.yaml 
ansible-playbook nginx_playbook.yaml 
cd ../04/
ls
cat nginx_playbook.yaml 
vi host_vars/centos1 
ansible-playbook b
ansible-playbook nginx_playbook.yaml 
cd ../05/
ls
cat nginx_playbook.yaml 
vim host_vars/
ansible-playbook nginx_playbook.yaml 
ansible all -m setup | grep ipv4
ansible all -m setup | grep ansible_default_ipv4.address
ansible all -m setup | grep ansible_default_ipv4
ansible all -m setup | grep ansible_default_ipv4 -A 2
curl http://172.19.0.5
curl http://172.19.0.5
sudo appt-get install curl
sudo appt-gat install curl
sudo apt-gat install curl
sudo apt-get install curl
curl http://172.19.0.5
curl
cd ../06/
ls
vim host_vars/
ls
vim nginx_playbook.yaml 
ls
ansible-playbook nginx_playbook.yaml 
ls
cd ../07/
vim host_vars/centos1 
cat nginx_playbook.yaml 
ansible-playbook nginx_playbook.yaml 
cd ../08/
ls
vim host_vars/centos1 
ls
ansible-playbook nginx_playbook.yaml 
cat nginx_playbook.yaml 
ls
tree
cat vars/logos.yaml 
cat nginx_playbook.yaml 
grep -r "nginx_root_location" 。
grep -r "nginx_root_location" .
ls
cat ansible.cfg 
cat vars/logos.yaml 
cat ansible.cfg 
clea
clear
cd diveintoansible/
Ansible\ Playbooks\,\ Introduction/
Ansible\ Playbooks\, Creating\ Modules\ and\ Plugins/
ls
cd Ansible\ Playbooks\,\ Introduction/
ls
cd 'Ansible Playbooks, Creating and Executing'/
ls
cd solution/
cd 08/
ls
vim nginx_playbook.yaml 
cd ../09/
cat nginx_playbook.yaml 
tree
cat group_vars/centos 
cat group_vars/ubuntu 
cat ansible.cfg 
vim host_vars/centos1 
ls
ansible-playbook nginx_playbook.yaml 
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd Ansible\ Playbooks\,\ Deep\ Dive/
ls
cd 'Playbook Modules'/
ls
cd 01
tree
cat set_fact_playbook.yaml 
vim host_vars/centos1 
ansible-playbook set_fact_playbook.yaml 
vim set_fact_playbook.yaml 
ansible-playbook set_fact_playbook.yaml 
cd ../02/
vim host
vim set_fact_playbook.yaml 
ansible-playbook set_fact_playbook.yaml 
cat set_fact_playbook.yaml 
cd ../03/
ls
cat set_fact_playbook.yaml 
ansible-playbook set_fact_playbook.yaml 
cat ../04/s
cat ../04/pause_playbook.yaml 
cd ../04/
ls
cat pause_playbook.yaml 
ansible-playbook pause_playbook.yaml 
cd ../05/
cat pause_playbook.yaml 
ansible-playbook pause_playbook.yaml 
cd ../06/
ls
cat run_webserver_playbook.yaml 
cat wait_for_playbook.yaml 
ansible-playbook run_webserver_playbook.yaml 
ansible-playbook wait_for_playbook.yaml 
cat wait_for_playbook.yaml 
cd ../07/
cat w
ls
cat assemble_playbook.yaml 
ansible centos3 -m service -a 'name=nginx state=stopping'
ansible-doc service
ansible centos3 -m service -a 'name=nginx state=stopped'
ansible-playbook wait_for_playbook.yaml 
ls
cd ../06/
ansible-playbook wait_for_playbook.yaml 
ansible centos3 -m service -a 'name=nginx state=stopped'cat wait_for_playbook.yaml 
cat wait_for_playbook.yaml 
ansible centos3 -m service -a 'name=nginx state=start'
ansible centos3 -m service -a 'name=nginx state=started'
ansible-playbook wait_for_playbook.yaml 
cd ../07/
ls
cat a
cat assemble_playbook.yaml 
cat ..//08/add_host_playbook.yaml 
cd diveintoansible/
ls
cd 'Ansible Playbooks, Deep Dive'/
ls
cd 'Playbook Modules'/
ls
cd 08/
ls
cat a
cat add_host_playbook.yaml 
vim host_vars/centos1 
cd ../09/
ls
cat add_host_playbook.yaml 
ls
ansible-playbook add_host_playbook.yaml 
vim host_vars/centos1 
ls
ansible-playbook group_
ansible-playbook group_by_playbook.yaml 
cat group_by_playbook.yaml 
ls
cd ../11/
vim host_vars/centos1 
ansible all -m setup | grep inventory_hostname
ansible all -m setup | grep -w hostname
ls
cat fetch_playbook.yaml 
vim fetch_playbook.yaml 
ansible-playbook fetch_playbook.yaml 
cat /tmp/redhat-release-centos1/centos1/etc/redhat-release 
tree
cd ..
ls
cd ..
ls
cd 'Dynamic Inventories'/
ls
cd 01/
ls
cat inventory.py 
./inventory.py 
ls
cat ansible.cfg 
ls
./inventory.py
./inventory.py --list
./inventory.py --host centos1
./inventory.py --host centos2
ansible all -i inventory.py --list-host
ansible all -i inventory.py -m ping -o
vim inventory.py 
ls
ansible all -i inventory.py -m ping -o
vim inventory.py 
cat inventory.py 
ls
cat inventory.py 
ls
./inventory.py --list
./inventory.py --host
./inventory.py
./inventory.py --host centos1
ansible all -i inventory.py -m ping -o
cat inventory.py | grep _meta
cd ../02/
ls
vim inventory.py 
cat /var/tmp/ansible_dynamic_inventory.log
ansible all -i inventory.py -m ping -o
cat /var/tmp/ansible_dynamic_inventory.log
ansible all -i inventory.py -m ping -o
cat /var/tmp/ansible_dynamic_inventory.log
cd ../03/
ls
cat inventory.py 
cd ../04/
ls
cat inventory.py 
cat inventory.py | grep _meta
ansible all -i inventory.py -m ping -o
ls
vim inventory.py 
./inventory.py --list |more
time ansible all -i inventory.py -list-hosts
time ansible all -i inventory.py -list-host
time ansible all -i inventory.py -list-hosts
time ansible all -i inventory.py --list-hosts
cd ../03/
time ansible all -i inventory.py --list-hosts
ansible-inventory
ansible-inventory --list
cat /etc/ansible/ansible.cfA
ls
cat ansible.cf
ansible-inventory -h
ansible-inventory hosts
ansible-inventory host
ansible-inventory 
jobs
cd ..
ls
cd 'Register and When'/
ls
cd 01/
ls
tree
cat register_playbook.yaml 
vim inventory.py
./inventory.py -host
./inventory.py --list
ls
sudo chmod 777 inventory.py 
ls
./inventory.py --list
ls
ansible-playbook register_playbook.yaml -i inventory.py 
vim inventory.py 
cat ansible.cfg 
cd -
cd ..
ls
cd 'Dynamic Inventories'/
ls
cd 01/
cat ansible.cfg 
cd -
cd ..
ls
cd 'Register and When'/
ls
cd 01/
ls
vim ansible.cfg 
ls
ansible-playbook register_playbook.yaml -i inventory.py 
ansible-playbook register_playbook.yaml
vim register_playbook.yaml 
ansible linux -i inventory.py  -m ping -o 
ls
cat ansible.cfg 
rm -rf group_vars/ host*
ls
ansible linux -i inventory.py  -m ping -o 
ansible-playbook register_playbook.yaml
ansible-playbook register_playbook.yaml -i inventory.py 
cat register_playbook.yaml 
hostname -s
ls
cd ../02/
ls
cat register_playbook.yaml 
ansible-playbook register_playbook.yaml 
cd ../03/
ls
cat register_playbook.yaml 
cd ../04/
ls
cat register_playbook.yaml 
cd ../05/
cat register_playbook.yaml 
cd ../06/
ls
cat register_playbook.yaml 
cd ../07/
ls
cat register_playbook.yaml 
cd ../08/
cat register_when_playbook.yaml 
ansible-playbook register_when_playbook.yaml 
cd ../09/
cat register_when_playbook.yaml 
cd ../10/
cat register_when_playbook.yaml 
ansible-playbook register_when_playbook.yaml 
vim register_when_playbook.yaml 
ansible-playbook register_when_playbook.yaml 
cat register_when_playbook.yaml 
cd ../11/
ls
cat register_when_playbook.yaml 
ansible-playbook register_when_playbook.yaml 
vim register_when_playbook.yaml 
ansible-playbook register_when_playbook.yaml 
vim register_when_playbook.yaml 
ansible-playbook register_when_playbook.yaml 
ls
