data "terraform_remote_state" "remote" {
  backend = "s3"
  config = {
    bucket = "watermelon392"
    key = "myterraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_subnet" "subnet4-public" {
  vpc_id            = data.terraform_remote_state.remote.outputs.vpc_id
  cidr_block        = "10.1.4.0/24"
  availability_zone = "us-east-1c"
}
 