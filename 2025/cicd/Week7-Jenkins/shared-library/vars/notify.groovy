def call(String message) {
    emailext(
        subject: "Jenkins Build Notification",
        body: message,
        recipientProviders: [
            [$class: 'DevelopersRecipientProvider']
        ]
    )
}
