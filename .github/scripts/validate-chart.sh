#!/bin/bash
set -e

# Check chart structure
function check_chart_structure() {
    local chart_dir="$1"
    
    # Required files
    local required_files=("Chart.yaml" "values.yaml" "values.schema.json" "README.md")
    for file in "${required_files[@]}"; do
        if [[ ! -f "$chart_dir/$file" ]]; then
            echo "❌ Missing required file: $file"
            return 1
        fi
    done
    
    # Required directories
    local required_dirs=("templates")
    for dir in "${required_dirs[@]}"; do
        if [[ ! -d "$chart_dir/$dir" ]]; then
            echo "❌ Missing required directory: $dir"
            return 1
        fi
    done
    
    return 0
}

# Check template files
function check_template_files() {
    local chart_dir="$1"
    local required_templates=("deployment.yaml" "service.yaml" "_helpers.tpl")
    
    for template in "${required_templates[@]}"; do
        if [[ ! -f "$chart_dir/templates/$template" ]]; then
            echo "❌ Missing required template: $template"
            return 1
        fi
    done
    
    return 0
}

# Main validation
for chart_dir in charts/stable/*/; do
    if [[ -d "$chart_dir" ]]; then
        echo "Checking chart: $chart_dir"
        
        check_chart_structure "$chart_dir" || exit 1
        check_template_files "$chart_dir" || exit 1
        
        # Additional checks could be added here
    fi
done

echo "✅ All charts validated successfully"