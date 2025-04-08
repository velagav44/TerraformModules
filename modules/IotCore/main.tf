resource "aws_iot_thing" "demo_thing" {
  name = "Sigmatic-Dev-IoTCore-Thing"
  attributes = {
    Environment = "Development"
  }
}