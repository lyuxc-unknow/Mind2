StartupEvents.init(event => {
    if (Platform.isClientEnvironment()) {
        let currentDate = new Date();
        let year = currentDate.getFullYear();
        let week = Math.ceil((((currentDate - new Date(year, 0, 1)) / 86400000) + 1) / 7);

        // 格式化版本号
        let version = `${year.toString().slice(-2)}w${week.toString().padStart(2, '0')}a`;

        // 修改游戏标题
        let title = `Mind2:思索🤓☝️ | 版本号: ${version}`;
        
        // 设置游戏标题
        Client.title = title
    }
})
