# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;std_msgs;pluginlib;rosneuro_msgs;rosneuro_integrator".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrosneuro_integrator_exponential".split(';') if "-lrosneuro_integrator_exponential" != "" else []
PROJECT_NAME = "rosneuro_integrator_exponential"
PROJECT_SPACE_DIR = "/home/sebastiano/hmm_workspace/install"
PROJECT_VERSION = "1.0.0"
