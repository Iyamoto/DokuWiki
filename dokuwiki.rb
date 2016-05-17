#Ubuntu DokuWiki installation recipe

apt_package 'dokuwiki' do
action :upgrade
end

apt_package 'php-mbstring' do
action :upgrade
end

apt_package 'php7.0-xml' do
action :upgrade
end

link '/var/www/html/wiki' do
  to '/usr/share/dokuwiki'
end

file '/etc/cron.daily/dokuwiki-backup.sh' do
  content "#test"
  owner 'root'
  group 'root'
  mode '0755'
end

service "apache2" do
  action :restart
end
