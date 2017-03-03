#This is an totally automatic shell for setting up basic development environment
#for CentOS and RHEL, including repositories, c, c++, Fortran and Python. Apart
#from languages, other tools such as make, Cmake, git and etc are going to be
#installed either. Generally speaking, any OS which support yum can run this,
#however, this shell tested on CentOS7 only. If you have any comments and feedbacks,
#please feel free to reach me at tienhsiangkao@gmail.com.
#                         T'ien-Hsiang Kao, March 3, 2017 10:43 PM UTC/GMT+08:00





#Repositories
#==============================================================================

  #epel-repo
  #------------------------------------------------------------------------------
  sudo yum -y install epel-release

  #ELRepo
  #------------------------------------------------------------------------------
  sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
  sudo rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm

  #dnf
  #------------------------------------------------------------------------------
  sudo yum -y install dnf

  #multiple download
  #------------------------------------------------------------------------------
  sudo yum -y install yum-axelget

#Basic Development Environment
#==============================================================================

  #GCC
  #------------------------------------------------------------------------------
  sudo yum -y install gcc                    # C compiler
  sudo yum -y install gcc-c++                # C++ compiler
  sudo yum -y install gcc-gfortran            # Fortran compiler
  sudo yum -y install compat-gcc-44          # gcc 4.4 compatibility
  sudo yum -y install compat-gcc-44-c++      # gcc-c++ 4.4 compatibility
  sudo yum -y install compat-gcc-44-gfortran  # gcc-fortran 4.4 compatibility
  sudo yum -y install compat-libf2c-34        # g77 3.4.x compatibility library

  #Pythons
  #------------------------------------------------------------------------------
  sudo yum -y install python-matplotlib # plot library
  sudo yum -y install PyQt4 # Python Qt4
  sudo yum -y install numpy # scientific computing library
  sudo yum -y install scipy # scientific computing library
  sudo yum -y install python-requests # web requests
  sudo yum -y install python-docopt # analyzer
  sudo yum -y install gdal-python # Python gdal

  #Pyenv
  #------------------------------------------------------------------------------
  sudo yum install readline readline-devel readline-static -y
  sudo yum install openssl openssl-devel openssl-static -y
  sudo yum install sqlite-devel -y
  sudo yum install bzip2-devel bzip2-libs -y

  git clone git://github.com/yyuu/pyenv.git ~/.pyenv
  sudo echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
  sudo echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  sudo echo 'eval "$(pyenv init -)"' >> ~/.bashrc
  sudo exec $SHELL -l

  #Supplements
  #------------------------------------------------------------------------------
  sudo yum -y install make
  sudo yum -y install gdb #
  sudo yum -y install cmake # Cmake
  sudo yum -y install git #
  sudo yum -y install tig # git text api
  sudo yum -y install git-svn # svn plugin for git

#Drivers
#==============================================================================

  #NTFS mount driver
  #----------------------------------------------------------------------------
  sudo yum -y install ntfs-3g
