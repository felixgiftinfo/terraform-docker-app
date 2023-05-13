# Creating a Docker Image ubuntu with the latest as the Tag

# -> docker pull nginx:latest
# Create a docker image resource
resource "docker_image" "school_app_image" {               
  name = "school-application"

  build {   
    path = "../school-app"
    dockerfile = "app.dockerfile"
  }

}

# Create a docker container resource
resource "docker_container" "school_app_container" {   
  # the name of the container
  name = "school-application_container"  
  image = docker_image.school_app_image.image_id
    ports {
    internal = "80"
    external = "8080"
  }
}
