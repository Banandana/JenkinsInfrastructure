import jenkins.model.JenkinsLocationConfiguration

locationConfig = JenkinsLocationConfiguration.get()

locationConfig.setUrl(System.getenv("JENKINS_URL"))
locationConfig.setAdminAddress(System.getenv("JENKINS_ADMIN_EMAIL"))

locationConfig.save()