// https://serverfault.com/questions/774510/jenkins-2-x-disable-initial-admin-setup

import jenkins.model.*
import hudson.util.*;
import jenkins.install.*;

def instance = Jenkins.getInstance()

instance.setInstallState(InstallState.INITIAL_SETUP_COMPLETED)