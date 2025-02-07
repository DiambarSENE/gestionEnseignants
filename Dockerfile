# Utilisez une image Java 17 comme image de base
FROM openjdk:17-oracle

# Définissez le répertoire de travail à l'intérieur du conteneur Docker.
#WORKDIR /app

# Crée un volume temporaire dans le conteneur,
# ce qui peut être utile pour les fichiers temporaires créés par l'application Java,
# permettant ainsi une meilleure gestion du stockage et de la persistance des données.
VOLUME /tmp

#Cette ligne copie le fichier JAR généré de votre application Spring Boot
#depuis le répertoire target de votre projet (dans le contexte de construction du Dockerfile)
#vers le répertoire de travail du conteneur, qui a été défini précédemment à l'aide de la commande WORKDIR.
COPY target/*.jar app.jar
# Exposer le port sur lequel le serveur sera accessible
#EXPOSE 8082

# Définit la commande par défaut à exécuter quand le conteneur démarre.
# Ici, cela lance l'application Java à partir du fichier JAR copié dans l'étape précédente.
# Cela permet à votre application Spring Boot de démarrer et de s'exécuter dans le conteneur.
ENTRYPOINT ["java", "-jar", "app.jar"]