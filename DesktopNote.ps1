Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

$window = New-Object System.Windows.Window

$window.Width = 390
$window.Height = 390
$window.Background = "#FFF7CC"

# 不在任务栏显示
$window.ShowInTaskbar = $false

# 不始终置顶
$window.Topmost = $false

$window.ResizeMode = "NoResize"
$window.WindowStyle = "SingleBorderWindow"

$window.Title = "工作提醒"

$window.WindowStartupLocation = "Manual"
$window.Left = 20
$window.Top = 150

$text = New-Object System.Windows.Controls.TextBlock

$text.Text = @"
固话2027-12、
西安宽带2026-12、
上海宽带500M2027-5、50M2026-11
IDC联通100M、电信200M
VPN续费

每日检查：
• Zabbix告警
• IDC出口流量
• 北京入口流量
• IPsec VPN状态
"@

$text.FontSize = 18
$text.FontFamily = "Microsoft YaHei"
$text.Margin = "20"
$text.TextWrapping = "Wrap"
$text.Foreground = "Black"

$window.Content = $text

$window.ShowDialog() | Out-Null