#!/bin/bash

# SF-Mobile WeldStar GitHub 设置脚本
# 使用方法: ./setup-github.sh YOUR_GITHUB_USERNAME

echo "🚀 SF-Mobile WeldStar GitHub 自动设置脚本"
echo "=============================================="

# 检查是否提供了GitHub用户名
if [ $# -eq 0 ]; then
    echo "❌ 错误: 请提供您的GitHub用户名"
    echo "使用方法: ./setup-github.sh YOUR_GITHUB_USERNAME"
    exit 1
fi

GITHUB_USERNAME=$1
REPO_NAME="sf-mobile-weldstar"

echo "📋 配置信息:"
echo "   GitHub用户名: $GITHUB_USERNAME"
echo "   仓库名称: $REPO_NAME"
echo ""

# 检查是否已经是Git仓库
if [ -d ".git" ]; then
    echo "⚠️  检测到现有Git仓库，将重新配置..."
    rm -rf .git
fi

echo "🔧 步骤1: 初始化Git仓库..."
git init

echo "🔧 步骤2: 配置Git用户信息..."
echo "请输入您的Git用户名:"
read -p "Git用户名: " GIT_USERNAME
echo "请输入您的Git邮箱:"
read -p "Git邮箱: " GIT_EMAIL

git config user.name "$GIT_USERNAME"
git config user.email "$GIT_EMAIL"

echo "🔧 步骤3: 添加文件到Git..."
git add .

echo "🔧 步骤4: 创建初始提交..."
git commit -m "Initial commit: SF-Mobile WeldStar with deposit tier system

- Implemented deposit tier system with boost multipliers
- Added responsive design for mobile devices  
- Integrated customer testimonials and FAQ section
- Optimized for SEO with meta tags and sitemap
- Added Netlify deployment configuration"

echo "🔧 步骤5: 设置远程仓库..."
git branch -M main
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

echo "🔧 步骤6: 推送到GitHub..."
echo "⚠️  注意: 请确保您已在GitHub上创建了名为 '$REPO_NAME' 的仓库"
echo "是否继续推送? (y/n)"
read -p "继续? " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "🎉 成功! 代码已推送到GitHub"
        echo ""
        echo "📋 下一步操作:"
        echo "1. 访问 https://netlify.com"
        echo "2. 点击 'New site from Git'"
        echo "3. 选择 'GitHub' 并授权"
        echo "4. 选择仓库: $GITHUB_USERNAME/$REPO_NAME"
        echo "5. 配置设置:"
        echo "   - Branch: main"
        echo "   - Build command: (留空)"
        echo "   - Publish directory: ."
        echo "6. 点击 'Deploy site'"
        echo ""
        echo "🌐 GitHub仓库地址: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
        echo ""
        echo "📖 详细部署指南请查看: DEPLOYMENT_GUIDE.md"
    else
        echo ""
        echo "❌ 推送失败! 请检查:"
        echo "1. GitHub仓库是否已创建"
        echo "2. 仓库名称是否正确"
        echo "3. 是否有推送权限"
        echo ""
        echo "手动推送命令:"
        echo "git push -u origin main"
    fi
else
    echo ""
    echo "⏸️  已取消推送"
    echo "准备好后，请运行: git push -u origin main"
fi

echo ""
echo "✅ Git设置完成!" 