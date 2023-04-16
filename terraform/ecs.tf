resource "aws_ecs_cluster" "foo" {
  name = "backen-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_service" "backend" {
  name            = "mongodb"
  cluster         = aws_ecs_cluster.foo.id
  task_definition = aws_ecs_task_definition.mongo.arn
  desired_count   = 3

  ordered_placement_strategy {
    type  = "binpack"
    field = "cpu"
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  }
}
