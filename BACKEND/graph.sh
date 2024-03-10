#!/bin/bash
terraform graph | dot -Tpng > terraform-backend-infrastructure.png
