# SF-Mobile WeldStar Landing Page

## 项目概述

SF-Mobile WeldStar是一个专业的便携式激光焊接设备营销网站，提供美国市场的产品展示、定金梯度系统和购买流程。

## 功能特色

### 🔥 定金梯度系统
- 6个定金层级：$500 - $1,800
- 奖励倍数：1.25× - 1.42×
- 最高$2,556信用额度

### 📱 响应式设计
- 移动端优化
- 现代化UI/UX
- 品牌色彩一致性 (#ff8c00)

### 🚀 功能亮点
- 产品规格对比表
- 美国仓库配送信息
- FAQ手风琴界面
- 客户推荐展示
- 技术规格详情

## 部署到Netlify (通过GitHub)

### 1. 将代码推送到GitHub

```bash
# 初始化Git仓库
git init

# 添加所有文件
git add .

# 提交代码
git commit -m "Initial commit: SF-Mobile WeldStar landing page"

# 添加GitHub远程仓库（替换为您的仓库URL）
git remote add origin https://github.com/YOUR_USERNAME/sf-mobile-weldstar.git

# 推送到GitHub
git push -u origin main
```

### 2. 在Netlify设置GitHub部署

1. 登录 [Netlify](https://netlify.com)
2. 点击 "New site from Git"
3. 选择 "GitHub" 作为Git提供商
4. 选择您的 `sf-mobile-weldstar` 仓库
5. 配置构建设置：
   - **Branch to deploy**: `main`
   - **Build command**: (留空)
   - **Publish directory**: `/`

### 3. 自定义域名设置

在Netlify项目设置中：
1. 进入 "Domain settings"
2. 添加自定义域名
3. 配置DNS设置

## 文件结构

```
sf-mobile-weldstar/
├── index.html              # 主页面
├── landing page.html       # 备用页面
├── robots.txt             # SEO爬虫指令
├── sitemap.xml            # 网站地图
├── README.md              # 项目说明
├── images/                # 图片资源
│   ├── Kevin Moyer chooses our laser welder.jpeg
│   ├── travis loves our laser welder.png
│   ├── Russ Loves our laser welder.jpg
│   └── 两张图片合一.jpg
└── docs/                  # 文档
    ├── deployment-checklist.md
    └── google-sitemap-setup.md
```

## 技术栈

- **前端**: HTML5, CSS3, JavaScript
- **部署**: Netlify + GitHub
- **SEO**: Meta标签优化, 结构化数据
- **分析**: Google Analytics集成

## 更新流程

1. 在本地修改代码
2. 提交到Git: `git commit -m "描述更改内容"`
3. 推送到GitHub: `git push`
4. Netlify自动部署更新

## 联系信息

- **美国仓库联系电话**: +1 (951) 233-4527
- **邮箱**: info@sflaser.net
- **网站**: [SF-Mobile WeldStar](https://sf-mobile-weldstar.netlify.app)

## 许可证

© 2023 Sky Fire Laser - All Rights Reserved 