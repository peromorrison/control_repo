class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDThhpr3//mPXYRHA9djzIQMIp2VR4ZiAuce6PYiYhkjXu9uhhv5IQa5UbjlXEDNtBzV4TCuNVK+8F9PVg8zf4hf/nFvmn/qBe1kfxvgwDMb1DQ+WlE2hhiClv0GdGQShFXTYhJLD46DokYL9qRz2xhJcRtErMyyoxeIOcnNAsmWsoNRKk5ePktmvyOvqNaupPz7eJNB+Ej4oGUI3ku2tjvBoSrAPhp+HwznkwPRoYEPm31vNk1qmj3it/RsXD70cNerzuSt4w6LickqUPSYi5rMUth5h34l0jVpiJlK2kNZP7GXohz7TG1pyDNZlmtuYs9Uc8eDQ4U+KylBrvuHOc7',
	}  
}
