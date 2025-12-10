#!/bin/bash
# Test script to simulate CI workflow locally

set -e  # Exit on error

echo "🧪 Testing CI Workflow Locally..."
echo ""

echo "📦 Step 1: Installing dependencies..."
npm install
echo "✅ Dependencies installed"
echo ""

echo "🏗️  Step 2: Building project..."
npm run build
echo "✅ Build completed"
echo ""

echo "🔍 Step 3: Running Lighthouse CI..."
# Install LHCI if not already installed
if ! command -v lhci &> /dev/null; then
    echo "Installing @lhci/cli..."
    npm install -g @lhci/cli@0.15.x
fi

lhci autorun
echo "✅ Lighthouse CI completed"
echo ""

echo "🎉 All CI steps completed successfully!"
