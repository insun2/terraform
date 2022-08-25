
resource "azurerm_linux_web_app" "linux-app-service" {
  name = "${var.tags.Environment}-${var.name}"
  location = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = var.service_plan_id
  
  site_config {
    application_stack {
      docker_image = var.application_stack.docker_image
      docker_image_tag = var.application_stack.docker_image_tag
    }
    /* 
      Always On: 트래픽이 없는 경우에도 앱을 로드 상태로 유지합니다. Always On를 설정하지 않으면 (기본값) 들어오는 요청이 없이 20 분 후에 앱이 언로드됩니다.
      언로드된 앱은 준비 시간 때문에 새 요청에 대해 대기 시간이 길어질 수 있습니다. 
      Always On 설정되면 프런트 엔드 부하 분산 장치는 5분 마다 애플리케이션 루트에 GET 요청을 보냅니다. 
      연속 ping은 앱이 언로드될 수 없도록 방지합니다.
      Always On은 연속 WebJobs 또는 CRON 언어 식을 사용하여 트리거되는 WebJobs에 필요합니다.
    */
    always_on = var.always_on
  }
  identity {
   type = "SystemAssigned" 
  }
  tags = merge(var.tags, { Name =  "${var.tags.Environment}-${var.name}"})
}