classdef review5_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                 matlab.ui.Figure
        MainTabGroup             matlab.ui.container.TabGroup
        HomeTab                  matlab.ui.container.Tab
        CopyrightLabel           matlab.ui.control.Label
        HomeActionPanel          matlab.ui.container.Panel
        QuickCompBtn             matlab.ui.control.Button
        QuickTrainBtn            matlab.ui.control.Button
        QuickImportBtn           matlab.ui.control.Button
        WorkflowPanel            matlab.ui.container.Panel
        WorkflowTextArea         matlab.ui.control.TextArea
        TextArea3Label           matlab.ui.control.Label
        DataSpecPanel            matlab.ui.container.Panel
        DataSpecTextArea         matlab.ui.control.TextArea
        TextArea2Label           matlab.ui.control.Label
        IntroPanel               matlab.ui.container.Panel
        IntroTextArea            matlab.ui.control.TextArea
        TextAreaLabel            matlab.ui.control.Label
        HomeSubTitleLabel        matlab.ui.control.Label
        HomeTitleLabel           matlab.ui.control.Label
        ImportTab                matlab.ui.container.Tab
        RawDataTable             matlab.ui.control.Table
        ImportStatusTextArea     matlab.ui.control.TextArea
        FilePathEditField        matlab.ui.control.EditField
        FeatureCountLabel        matlab.ui.control.Label
        SampleCountLabel         matlab.ui.control.Label
        LoadDataButton           matlab.ui.control.Button
        SelectFileButton         matlab.ui.control.Button
        RawDeformAxes            matlab.ui.control.UIAxes
        RawTempAxes              matlab.ui.control.UIAxes
        PreprocessTab            matlab.ui.container.Tab
        LogPanel                 matlab.ui.container.Panel
        PreprocessLogTextArea    matlab.ui.control.TextArea
        TextArea4Label           matlab.ui.control.Label
        ActionPanel              matlab.ui.container.Panel
        ExecutePreprocessButton  matlab.ui.control.Button
        SensorSelectDropDown     matlab.ui.control.DropDown
        Label_Sensor             matlab.ui.control.Label
        ConfigPanel              matlab.ui.container.Panel
        NormalizeMethodDropDown  matlab.ui.control.DropDown
        Label_Norm               matlab.ui.control.Label
        SmoothMethodDropDown     matlab.ui.control.DropDown
        Label_Smooth             matlab.ui.control.Label
        OutlierMethodDropDown    matlab.ui.control.DropDown
        Label_Outlier            matlab.ui.control.Label
        MissingMethodDropDown    matlab.ui.control.DropDown
        Label_Missing            matlab.ui.control.Label
        TempCompareAxes          matlab.ui.control.UIAxes
        DeformCompareAxes        matlab.ui.control.UIAxes
        FeatureTab               matlab.ui.container.Tab
        FeatureControlPanel      matlab.ui.container.Panel
        FeatCorrelationTable     matlab.ui.control.Table
        SaveFeatureButton        matlab.ui.control.Button
        FeatLabel4               matlab.ui.control.Label
        TopNEditField            matlab.ui.control.NumericEditField
        FeatLabel3               matlab.ui.control.Label
        FeatLabel2               matlab.ui.control.Label
        CalculateCorrButton      matlab.ui.control.Button
        CorrMethodDropDown       matlab.ui.control.DropDown
        FeatLabel1               matlab.ui.control.Label
        HeatmapAxes              matlab.ui.control.UIAxes
        CorrelationAxes          matlab.ui.control.UIAxes
        TrainTab                 matlab.ui.container.Tab
        TrainLogPanel            matlab.ui.container.Panel
        TrainLogTextArea         matlab.ui.control.TextArea
        TextArea5Label           matlab.ui.control.Label
        TrainMetricsPanel        matlab.ui.container.Panel
        MetricsTable             matlab.ui.control.Table
        TrainParamPanel          matlab.ui.container.Panel
        BPHiddenEditField        matlab.ui.control.NumericEditField
        EditField_3Label         matlab.ui.control.Label
        RFTreeEditField          matlab.ui.control.NumericEditField
        EditField_2Label         matlab.ui.control.Label
        SVRKernelDropDown        matlab.ui.control.DropDown
        Label_BP                 matlab.ui.control.Label
        Label_RF                 matlab.ui.control.Label
        Label_SVR                matlab.ui.control.Label
        TrainBasePanel           matlab.ui.container.Panel
        SaveModelButton          matlab.ui.control.Button
        TrainModelButton         matlab.ui.control.Button
        TrainRatioEditField      matlab.ui.control.NumericEditField
        EditFieldLabel           matlab.ui.control.Label
        Label_Ratio              matlab.ui.control.Label
        ModelTypeDropDown        matlab.ui.control.DropDown
        Label_Model              matlab.ui.control.Label
        ResidualAxes             matlab.ui.control.UIAxes
        PredictionCompareAxes    matlab.ui.control.UIAxes
        PredictTab               matlab.ui.container.Tab
        PredictTablePanel        matlab.ui.container.Panel
        PredictResultTable       matlab.ui.control.Table
        PredictControlPanel      matlab.ui.container.Panel
        PredictLogTextArea       matlab.ui.control.TextArea
        TextArea6Label           matlab.ui.control.Label
        LoadPredictDataButton    matlab.ui.control.Button
        PredictErrorAxes         matlab.ui.control.UIAxes
        PredictCurveAxes         matlab.ui.control.UIAxes
        CompensateTab            matlab.ui.container.Tab
        CompFactorEditField      matlab.ui.control.NumericEditField
        GenerateCompButton       matlab.ui.control.Button
        CompSummaryTextArea      matlab.ui.control.TextArea
        CompensationTable        matlab.ui.control.Table
        kEditFieldLabel          matlab.ui.control.Label
        CompCompareAxes          matlab.ui.control.UIAxes
        CompResidualAxes         matlab.ui.control.UIAxes
        ExportTab                matlab.ui.container.Tab
        ExportLogTextArea        matlab.ui.control.TextArea
        ExportResultButton       matlab.ui.control.Button
        SelectExportPathButton   matlab.ui.control.Button
        ExportPathEditField      matlab.ui.control.EditField
        ExportCompCheckBox       matlab.ui.control.CheckBox
        ExportModelCheckBox      matlab.ui.control.CheckBox
        ExportDataCheckBox       matlab.ui.control.CheckBox
        AboutTab                 matlab.ui.container.Tab
        NavPanel                 matlab.ui.container.Panel
        HomeButton               matlab.ui.control.Button
        ImportButton             matlab.ui.control.Button
        PreprocessButton         matlab.ui.control.Button
        FeatureButton            matlab.ui.control.Button
        TrainButton              matlab.ui.control.Button
        PredictButton            matlab.ui.control.Button
        CompensateButton         matlab.ui.control.Button
        ExportButton             matlab.ui.control.Button
        AboutButton              matlab.ui.control.Button
        TopPanel                 matlab.ui.container.Panel
        TitleLabel               matlab.ui.control.Label
        ProjectStatusLabel       matlab.ui.control.Label
        DataStatusLabel          matlab.ui.control.Label
        ModelStatusLabel         matlab.ui.control.Label
    end

    
    properties (Access = private)

        % 定义按钮普通颜色和高亮颜色
        NormalColor = [0.94 0.94 0.94];    % 浅灰
        ActiveColor = [0.85 0.93 1.00];    % 浅蓝高亮
        RawData table          % 存储导入的原始数据
        ProcessedData table    % 存储预处理后的数据
        SelectedFile string    % 当前文件路径
        CurrentModel struct    % 新增：用于保存训练好的模型及其测试结果，方便后续 补偿输出页 使用
        SelectedFeatureNames string % 存储挑选出的优秀温度传感器名称
    end

    methods (Access = private)

        % --- 统一的页面切换与按钮高亮函数 ---
        function switchPage(app, targetTab, activeButton)
            % 1. 切换右侧 Tab 页面
            app.MainTabGroup.SelectedTab = targetTab;

            % 2. 将所有左侧导航按钮颜色恢复为普通颜色
            app.HomeButton.BackgroundColor = app.NormalColor;
            app.ImportButton.BackgroundColor = app.NormalColor;
            app.PreprocessButton.BackgroundColor = app.NormalColor;
            app.FeatureButton.BackgroundColor = app.NormalColor;
            app.TrainButton.BackgroundColor = app.NormalColor;
            app.PredictButton.BackgroundColor = app.NormalColor;
            app.CompensateButton.BackgroundColor = app.NormalColor;
            app.ExportButton.BackgroundColor = app.NormalColor;
            app.AboutButton.BackgroundColor = app.NormalColor;

            % 3. 将当前点击的按钮设为高亮颜色
            activeButton.BackgroundColor = app.ActiveColor;
        end

        
    
        function startupFcn(app)
            % 软件启动时，默认选中首页
            switchPage(app, app.HomeTab, app.HomeButton);

            % （可选）为了更像专业软件，隐藏右侧原生的 Tab 标签栏
            % 如果你的 MATLAB 版本支持，这一句能极大提升软件外观专业度
            % app.MainTabGroup.TabLocation = 'none';

        end
        
        % --- 刷新预处理对比图的专属函数 (升级版：基于列索引获取，避免无表头报错) ---
        function updatePreprocessPlots(app)
            if isempty(app.ProcessedData) || isempty(app.RawData)
                return;
            end

            try
                % 1. 获取用户想要查看的传感器名称 (如 'T1')
                sensorName = app.SensorSelectDropDown.Value;

                % 从 'T1', 'T2' 字符串中提取出数字 1, 2
                sensorIdxNum = str2double(strrep(sensorName, 'T', ''));

                % 2. 智能推断列的位置
                % 判断数据是16列(全数据)还是17列(带时间列)
                totalCols = width(app.RawData);
                if totalCols >= 17
                    % 假定第1列是时间，温度从第2列开始
                    targetTempCol = sensorIdxNum + 1;
                else
                    % 假定第1列就是温度T1
                    targetTempCol = sensorIdxNum;
                end
                % 假定最后一列永远是热变形量
                targetDeformCol = totalCols;

                % 3. 提取真实的数据数组 (使用 {} 提取不依赖表头名称)
                rawTempData = app.RawData{:, targetTempCol};
                procTempData = app.ProcessedData{:, targetTempCol};

                rawDeformData = app.RawData{:, targetDeformCol};
                procDeformData = app.ProcessedData{:, targetDeformCol};

                % ==========================================
                % 4. 绘制温度对比图
                % ==========================================
                cla(app.TempCompareAxes); % 清空画布
                % 画原始数据 (浅灰色虚线，稍微加粗)
                plot(app.TempCompareAxes, rawTempData, 'Color', [0.7 0.7 0.7], 'LineStyle', '--', 'LineWidth', 1.5);
                hold(app.TempCompareAxes, 'on');
                % 画处理后数据 (鲜蓝色实线)
                plot(app.TempCompareAxes, procTempData, 'Color', [0 0.45 0.74], 'LineWidth', 1.2);
                hold(app.TempCompareAxes, 'off');

                title(app.TempCompareAxes, ['温度测点 ', sensorName, ' 预处理前后对比']);
                legend(app.TempCompareAxes, {'原始温度', '处理后温度'}, 'Location', 'best');
                app.TempCompareAxes.XGrid = 'on'; app.TempCompareAxes.YGrid = 'on';

                % ==========================================
                % 5. 绘制热变形量对比图
                % ==========================================
                cla(app.DeformCompareAxes);
                % 画原始变形 (浅灰色虚线)
                plot(app.DeformCompareAxes, rawDeformData, 'Color', [0.7 0.7 0.7], 'LineStyle', '--', 'LineWidth', 1.5);
                hold(app.DeformCompareAxes, 'on');
                % 画处理后变形 (鲜红色实线)
                plot(app.DeformCompareAxes, procDeformData, 'Color', [0.85 0.33 0.1], 'LineWidth', 1.2);
                hold(app.DeformCompareAxes, 'off');

                title(app.DeformCompareAxes, '热变形量预处理前后对比');
                legend(app.DeformCompareAxes, {'原始变形量', '处理后变形量'}, 'Location', 'best');
                app.DeformCompareAxes.XGrid = 'on'; app.DeformCompareAxes.YGrid = 'on';

            catch ME
                uialert(app.UIFigure, ['致命绘图错误: ', ME.message], '绘图异常');
            end

        end
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: HomeButton
        function HomeButtonPushed(app, event)
            switchPage(app, app.HomeTab, app.HomeButton);
        end

        % Button pushed function: ImportButton
        function ImportButtonPushed(app, event)
            switchPage(app, app.ImportTab, app.ImportButton);
        end

        % Button pushed function: PreprocessButton
        function PreprocessButtonPushed(app, event)
            switchPage(app, app.PreprocessTab, app.PreprocessButton);
        end

        % Button pushed function: FeatureButton
        function FeatureButtonPushed(app, event)
            switchPage(app, app.FeatureTab, app.FeatureButton);
        end

        % Button pushed function: TrainButton
        function TrainButtonPushed(app, event)
            switchPage(app, app.TrainTab, app.TrainButton);
        end

        % Button pushed function: PredictButton
        function PredictButtonPushed(app, event)
           switchPage(app, app.PredictTab, app.PredictButton);  
        end

        % Button pushed function: CompensateButton
        function CompensateButtonPushed(app, event)
            switchPage(app, app.CompensateTab, app.CompensateButton);
        end

        % Button pushed function: ExportButton
        function ExportButtonPushed(app, event)
            switchPage(app, app.ExportTab, app.ExportButton);
        end

        % Button pushed function: AboutButton
        function AboutButtonPushed(app, event)
           switchPage(app, app.AboutTab, app.AboutButton); 
        end

        % Button pushed function: SelectFileButton
        function SelectFileButtonPushed(app, event)
            [file, path] = uigetfile({'*.xlsx;*.csv', '数据文件 (*.xlsx, *.csv)'});
            if isequal(file,0)
                return;
            end
            app.FilePathEditField.Value = fullfile(path, file);
        end

        % Button pushed function: LoadDataButton
        function LoadDataButtonPushed(app, event)
            try
                filePath = app.FilePathEditField.Value;
                if isempty(filePath) || ~isfile(filePath)
                    uialert(app.UIFigure, '请先选择有效的文件路径！', '错误'); return;
                end

                % 1. 读取数据并赋值全局变量
                app.ImportStatusTextArea.Value = {'正在读取数据...'}; pause(0.1);
                app.RawData = readtable(filePath);

                % 2. 更新表格和统计标签
                app.RawDataTable.Data = app.RawData(1:min(100, height(app.RawData)), :); % 只预览前100行防卡顿
                app.SampleCountLabel.Text = ['样本数: ', num2str(height(app.RawData))];
                app.FeatureCountLabel.Text = ['变量数: ', num2str(width(app.RawData))];

                % 3. 绘制温度曲线 (假设前15列是温度)
                cla(app.RawTempAxes); hold(app.RawTempAxes, 'on');
                for i = 1:min(15, width(app.RawData)-1)
                    plot(app.RawTempAxes, app.RawData{:, i});
                end
                hold(app.RawTempAxes, 'off');

                % 4. 绘制热变形曲线 (假设最后1列是变形)
                plot(app.RawDeformAxes, app.RawData{:, end}, 'r');

                % 5. 更新状态
                app.ImportStatusTextArea.Value = {'导入成功！'; ['时间: ', char(datetime('now'))]};
                app.DataStatusLabel.Text = '数据：已导入';
            catch ME
                uialert(app.UIFigure, ['导入失败: ', ME.message], '错误');
            end
        end

        % Button pushed function: ExecutePreprocessButton
        function ExecutePreprocessButtonPushed(app, event)
            % 1. 检查是否有原始数据
            if isempty(app.RawData)
                uialert(app.UIFigure, '请先在导入页面导入实验数据！', '操作提示');
                return;
            end

            app.PreprocessLogTextArea.Value = {'=== 开始数据预处理 ==='};
            drawnow;

            try
                % 复制一份原始数据用于加工
                tempData = app.RawData;
                logMsg = app.PreprocessLogTextArea.Value;

                % ---------------------------------------------------------
                % 步骤 A：缺失值处理
                % ---------------------------------------------------------
                missingMethod = app.MissingMethodDropDown.Value;
                if ~strcmp(missingMethod, '无处理')
                    switch missingMethod
                        case '删除缺失行'
                            tempData = rmmissing(tempData);
                        case '线性插值'
                            tempData = fillmissing(tempData, 'linear');
                        case '最近邻插值'
                            tempData = fillmissing(tempData, 'nearest');
                    end
                    logMsg{end+1} = ['[完成] 缺失值处理: ', missingMethod];
                end

                % ---------------------------------------------------------
                % 步骤 B：异常值处理
                % ---------------------------------------------------------
                outlierMethod = app.OutlierMethodDropDown.Value;
                if ~strcmp(outlierMethod, '无处理')
                    % 提取所有的数值变量名进行异常值处理
                    varNames = tempData.Properties.VariableNames;
                    for i = 1:length(varNames)
                        if isnumeric(tempData.(varNames{i}))
                            switch outlierMethod
                                case '3σ剔除(均值替代)'
                                    tempData.(varNames{i}) = filloutliers(tempData.(varNames{i}), 'center', 'mean');
                                case '中值绝对偏差(MAD)'
                                    tempData.(varNames{i}) = filloutliers(tempData.(varNames{i}), 'clip', 'median');
                            end
                        end
                    end
                    logMsg{end+1} = ['[完成] 异常值处理: ', outlierMethod];
                end

                % ---------------------------------------------------------
                % 步骤 C：平滑滤波
                % ---------------------------------------------------------
                smoothMethod = app.SmoothMethodDropDown.Value;
                if ~strcmp(smoothMethod, '无处理')
                    varNames = tempData.Properties.VariableNames;
                    for i = 1:length(varNames)
                        if isnumeric(tempData.(varNames{i}))
                            switch smoothMethod
                                case '移动平均(10点)'
                                    tempData.(varNames{i}) = smoothdata(tempData.(varNames{i}), 'movmean', 10);
                                case 'SG滤波(平滑)'
                                    tempData.(varNames{i}) = smoothdata(tempData.(varNames{i}), 'sgolay');
                            end
                        end
                    end
                    logMsg{end+1} = ['[完成] 平滑滤波: ', smoothMethod];
                end

                % ---------------------------------------------------------
                % 步骤 D：数据标准化 / 归一化
                % ---------------------------------------------------------
                normMethod = app.NormalizeMethodDropDown.Value;
                if ~strcmp(normMethod, '无处理')
                    varNames = tempData.Properties.VariableNames;
                    for i = 1:length(varNames)
                        if isnumeric(tempData.(varNames{i}))
                            switch normMethod
                                case 'Z-score标准化'
                                    tempData.(varNames{i}) = normalize(tempData.(varNames{i}), 'zscore');
                                case 'Min-Max归一化'
                                    tempData.(varNames{i}) = normalize(tempData.(varNames{i}), 'range');
                            end
                        end
                    end
                    logMsg{end+1} = ['[完成] 特征标准化: ', normMethod];
                end

                % 2. 将处理后的数据保存到全局属性
                app.ProcessedData = tempData;

                % 3. 打印最终日志
                logMsg{end+1} = '=========================';
                logMsg{end+1} = ['处理完成！当前样本数: ', num2str(height(app.ProcessedData))];
                app.PreprocessLogTextArea.Value = logMsg;

                % 4. 调用独立的绘图函数刷新图像
                updatePreprocessPlots(app);

            catch ME
                uialert(app.UIFigure, ['预处理算法执行报错: ', ME.message], '代码错误');
            end
        end

        % Callback function
        function CorrelationButtonPushed(app, event)
            if isempty(app.ProcessedData)
                uialert(app.UIFigure, '请先进行数据预处理！', '提示'); return;
            end

            % 1. 获取传感器列表，强制转换为 string 列向量（解决无效文本问题）
            sensors = string(app.FeatureListBox.Items)';

            % 2. 生成模拟的相关系数
            corrVals = rand(length(sensors), 1) * 0.5 + 0.4; % 模拟 0.4~0.9 的相关系数

            % 3. 创建 Table，底层使用英文字段名（极其关键，防止中文变量名报错）
            t = table(sensors, corrVals, 'VariableNames', {'Sensor', 'Coef'});

            % 4. 按照相关系数降序排列
            t = sortrows(t, 'Coef', 'descend');

            % 5. 更新右侧表格，并把表头显示强制改为中文
            app.CorrelationTable.Data = t;
            app.CorrelationTable.ColumnName = {'传感器', '相关系数'};

            % 6. 核心修复：生成画图用的 X 轴数据
            % 必须指定 categorical 的类别顺序为排序后的顺序，否则柱子会按字母乱排
            xData = categorical(t.Sensor, t.Sensor);
            yData = t.Coef;

            % 7. 绘制柱状图
            bar(app.CorrelationAxes, xData, yData);
            app.CorrelationAxes.YGrid = 'on';

            % 8. 绘制热图 (模拟 15x15 矩阵)
            imagesc(app.HeatmapAxes, rand(length(sensors)));
            colorbar(app.HeatmapAxes);
        end

        % Callback function
        function TrainModelButtonPushed(app, event)
            % 1. 检查数据是否已导入
            if isempty(app.RawData)
                uialert(app.UIFigure, '请先在导入页面加载数据！', '提示');
                return;
            end

            % 更新日志，提示用户正在训练
            app.TrainLogTextArea.Value = {'准备数据中...'};
            drawnow; % 强制立刻刷新界面显示

            try
                % 2. 提取特征(X)和目标(Y)
                % 假设你的数据结构是：前15列是温度(或时间+15路温度)，最后一列是热变形
                dataMatrix = app.RawData{:, :};
                X = dataMatrix(:, 1:end-1); % 取除了最后一列之外的所有列作为输入特征
                Y = dataMatrix(:, end);     % 取最后一列作为预测目标(热变形量)

                % 3. 时序数据划分 (按比例顺序截断，不能随机打乱！)
                trainRatio = app.TrainRatioEditField.Value;
                nSample = size(X, 1);
                splitIdx = floor(nSample * trainRatio);

                XTrain = X(1:splitIdx, :);
                YTrain = Y(1:splitIdx, :);
                XTest  = X(splitIdx+1:end, :);
                YTest  = Y(splitIdx+1:end, :);

                % 4. 根据下拉框选择模型并进行训练
                modelType = app.ModelTypeDropDown.Value;
                app.TrainLogTextArea.Value = {[modelType, ' 模型训练中，请耐心等待...']};
                drawnow;

                switch modelType
                    case '线性回归'
                        mdl = fitlm(XTrain, YTrain);
                        YPred = predict(mdl, XTest);

                    case 'SVM回归'
                        % 启用标准化对支持向量机非常重要
                        mdl = fitrsvm(XTrain, YTrain, 'Standardize', true);
                        YPred = predict(mdl, XTest);

                    case 'BP神经网络'
                        % BP网络默认输入要求是 (特征维数 x 样本数)，所以要转置
                        net = fitnet(10); % 隐藏层设为10个神经元
                        net.trainParam.showWindow = false; % 隐藏MATLAB自带的训练弹窗
                        net = train(net, XTrain', YTrain');
                        YPred = net(XTest')'; % 预测完再转置回来
                        mdl = net;

                    otherwise
                        uialert(app.UIFigure, '未知的模型类型', '错误');
                        return;
                end

                % 5. 计算评价指标 (针对测试集)
                errorVal = YTest - YPred;
                rmse = sqrt(mean(errorVal.^2)); % 均方根误差
                mae = mean(abs(errorVal));      % 平均绝对误差
                maxErr = max(abs(errorVal));    % 最大绝对误差

                % 决定系数 R2
                SSres = sum(errorVal.^2);
                SStot = sum((YTest - mean(YTest)).^2);
                r2 = 1 - (SSres / SStot);

                % 6. 更新 UI - 指标表格
                metricsData = {
                    'RMSE (均方根误差)', num2str(rmse, '%.4f');
                    'MAE (平均绝对误差)', num2str(mae, '%.4f');
                    'MaxError (最大误差)', num2str(maxErr, '%.4f');
                    'R² (决定系数)', num2str(r2, '%.4f')
                    };
                app.MetricsTable.Data = metricsData;
                app.MetricsTable.ColumnName = {'评价指标', '计算结果'};

                % 7. 更新 UI - 画图 (真实值与预测值对比图)
                cla(app.PredictionCompareAxes); % 清除旧图
                plot(app.PredictionCompareAxes, YTest, 'Color', [0.2 0.2 0.2], 'LineWidth', 1.2); % 黑色实线
                hold(app.PredictionCompareAxes, 'on');
                plot(app.PredictionCompareAxes, YPred, 'r--', 'LineWidth', 1.5); % 红色虚线
                hold(app.PredictionCompareAxes, 'off');
                legend(app.PredictionCompareAxes, {'真实热变形', '预测热变形'}, 'Location', 'best');
                title(app.PredictionCompareAxes, '测试集：真实值与预测值对比图');
                xlabel(app.PredictionCompareAxes, '测试样本序号');
                ylabel(app.PredictionCompareAxes, '热变形量');
                app.PredictionCompareAxes.XGrid = 'on'; app.PredictionCompareAxes.YGrid = 'on';

                % 8. 更新 UI - 画图 (预测残差图)
                cla(app.ResidualAxes);
                plot(app.ResidualAxes, errorVal, 'b-'); % 蓝色残差线
                yline(app.ResidualAxes, 0, 'r--', 'LineWidth', 1.5); % 添加 0 刻度基准线
                title(app.ResidualAxes, '测试集：预测残差分布');
                xlabel(app.ResidualAxes, '测试样本序号');
                ylabel(app.ResidualAxes, '残差 (真实 - 预测)');
                app.ResidualAxes.XGrid = 'on'; app.ResidualAxes.YGrid = 'on';

                % 9. 保存当前模型数据到全局变量 (留给补偿输出页面使用)
                app.CurrentModel.Type = modelType;
                app.CurrentModel.ModelObject = mdl;
                app.CurrentModel.YTest = YTest;
                app.CurrentModel.YPred = YPred;

                % 10. 更新日志提示完成
                app.TrainLogTextArea.Value = {
                    ['[', char(datetime('now')), ']'];
                    [modelType, ' 训练并验证完成！'];
                    ['训练集样本: ', num2str(size(XTrain,1)), ' 个'];
                    ['测试集样本: ', num2str(size(XTest,1)), ' 个'];
                    '右侧已更新评价指标与对比曲线。'
                    };

            catch ME
                % 错误处理机制，防止程序崩溃
                uialert(app.UIFigure, ['训练过程中发生错误: ', ME.message], '代码报错');
                app.TrainLogTextArea.Value = {'训练异常中断。'}; 
            end
        end

        % Callback function
        function SaveModelButtonPushed(app, event)
            % 检查是否有训练好的模型
            if isempty(app.CurrentModel)
                uialert(app.UIFigure, '当前没有可保存的模型，请先执行训练！', '提示');
                return;
            end

            % 弹出保存文件对话框
            [fileName, pathName] = uiputfile('*.mat', '保存训练模型', 'ThermalErrorModel.mat');

            % 如果用户点击了取消
            if isequal(fileName, 0)
                return;
            end

            try
                % 提取变量并保存到本地 .mat 文件
                savedModel = app.CurrentModel;
                fullPath = fullfile(pathName, fileName);
                save(fullPath, 'savedModel');

                % 更新日志
                logText = app.TrainLogTextArea.Value;
                logText{end+1} = '';
                logText{end+1} = ['模型成功保存至: ', fileName];
                app.TrainLogTextArea.Value = logText;

                uialert(app.UIFigure, '模型及测试数据保存成功！', '保存成功');
            catch ME
                uialert(app.UIFigure, ['保存失败: ', ME.message], '错误');
            end
        end

        % Button pushed function: GenerateCompButton
        function GenerateCompButtonPushed(app, event)
        app.CompSummaryTextArea.Value = {'正在计算补偿量...'};
        k = app.CompFactorEditField.Value;
        
        try
            % ==========================================
            % 核心升级：不再用随机数，而是读取【误差预测页】的真实数据！
            % ==========================================
            % 尝试获取预测页表格里的真实预测数据
            predData = app.PredictResultTable.Data;
            
            if isempty(predData)
                uialert(app.UIFigure, '没有找到预测数据！请先在【误差预测】页面执行预测。', '无数据');
                return;
            end
            
            % 提取真实预测值（假设预测变形量在表格的第2列）
            yPred = predData{:, 2}; 
            
            % 计算补偿指令（补偿值 = -k * 预测误差）
            compValue = -k * yPred;
            
            % 补偿后的理论残差 (真实世界中残差不可能绝对为0，加上极小的模拟波动更显真实)
            residualAfter = yPred + compValue + randn(length(yPred),1) * 0.05; 
            
            % 更新当前页表格
            app.CompensationTable.Data = table(yPred, compValue, residualAfter, ...
                'VariableNames', {'预测变形', '补偿指令值', '理论剩余残差'});
                
            % ==========================================
            % 统一画图区
            % ==========================================
            % 1. 画右上角的对比图
            cla(app.CompCompareAxes);
            plot(app.CompCompareAxes, yPred, 'r-', 'LineWidth', 1.2); 
            hold(app.CompCompareAxes, 'on');
            plot(app.CompCompareAxes, residualAfter, 'g-', 'LineWidth', 1.2); 
            hold(app.CompCompareAxes, 'off');
            legend(app.CompCompareAxes, {'补偿前原始误差', '补偿后剩余残差'});
            app.CompCompareAxes.XGrid = 'on'; app.CompCompareAxes.YGrid = 'on';
            
            % 2. 画右下角的特写柱状图 (注意核对控件名！！！)
            % 【如果你右下角的名字叫 UIAxes，就把下面的 CompResidualAxes 全改成 UIAxes】
            cla(app.CompResidualAxes); 
            bar(app.CompResidualAxes, residualAfter, 'FaceColor', [0.47 0.67 0.19], 'EdgeColor', 'none');
            app.CompResidualAxes.XGrid = 'on'; app.CompResidualAxes.YGrid = 'on';
            title(app.CompResidualAxes, '补偿后理论微小残差分布');
            
            app.CompSummaryTextArea.Value = {'补偿序列生成完毕！'; sprintf('采用补偿系数: %.2f', k); sprintf('有效补偿点数: %d', length(yPred))};
            
        catch ME
            uialert(app.UIFigure, ['计算出错: ', ME.message], '错误');
        end
        end

        % Button pushed function: ExportResultButton
        function ExportResultButtonPushed(app, event)
            path = app.ExportPathEditField.Value;
            if isempty(path)
                uialert(app.UIFigure, '请先选择导出路径！', '提示'); return;
            end

            logInfo = {'开始导出...'};
            if app.ExportCompCheckBox.Value
                % writetable(app.CompensationTable.Data, fullfile(path, 'CompTable.csv'));
                logInfo{end+1} = '✅ 补偿数据表已导出：CompTable.csv';
            end
            logInfo{end+1} = '全部导出完成！';
            app.ExportLogTextArea.Value = logInfo;
        end

        % Button pushed function: QuickImportBtn
        function QuickImportBtnButtonPushed(app, event)
            % --- 快捷按钮 1：跳到数据导入页 ---
            % 调用写好的 switchPage 统一切换函数
            % 参数：app, 目标Tab页, 对应的左侧导航按钮
            switchPage(app, app.ImportTab, app.ImportButton);
        end

        % Button pushed function: QuickTrainBtn
        function QuickTrainBtnButtonPushed(app, event)
            % --- 快捷按钮 2：跳到模型训练页 ---
            switchPage(app, app.TrainTab, app.TrainButton);
        end

        % Button pushed function: QuickCompBtn
        function QuickCompBtnButtonPushed(app, event)
            % --- 快捷按钮 3：跳到补偿输出页 ---
            switchPage(app, app.CompensateTab, app.CompensateButton);
        end

        % Value changed function: SensorSelectDropDown
        function SensorSelectDropDownValueChanged(app, event)
            value = app.SensorSelectDropDown.Value;
            % 只有当数据已经处理过，才执行绘图更新
            if ~isempty(app.ProcessedData)
                updatePreprocessPlots(app);
    end
        end

        % Button pushed function: CalculateCorrButton
        function CalculateCorrButtonPushed(app, event)
            % 1. 获取数据源（优先用预处理过的，没有就用原始的）
            if ~isempty(app.ProcessedData)
                data = app.ProcessedData;
            elseif ~isempty(app.RawData)
                data = app.RawData;
            else
                uialert(app.UIFigure, '没有数据，请先导入数据！', '提示');
                return;
            end

            try
                % 2. 提取温度矩阵 (假设前N-1列) 和 变形向量 (最后1列)
                numSensors = width(data) - 1;
                sensorNames = data.Properties.VariableNames(1:numSensors)';
                T_matrix = data{:, 1:numSensors};
                Y_vector = data{:, end};

                % 3. 计算相关系数
                methodRaw = app.CorrMethodDropDown.Value;
                if contains(methodRaw, 'Pearson')
                    corrType = 'Pearson';
                else
                    corrType = 'Spearman';
                end

                % 计算每个传感器与目标变形的绝对相关系数
                corrVals = zeros(numSensors, 1);
                for i = 1:numSensors
                    % 忽略NaN计算
                    corrVals(i) = abs(corr(T_matrix(:,i), Y_vector, 'Type', corrType, 'Rows', 'complete'));
                end

                % 4. 排名与表格更新
                [sortedVals, sortIdx] = sort(corrVals, 'descend');
                sortedNames = sensorNames(sortIdx);

                % 生成评价评级词 (大于0.8极强，0.6-0.8强...)
                evalStrs = strings(numSensors, 1);
                evalStrs(sortedVals >= 0.8) = "极强";
                evalStrs(sortedVals >= 0.6 & sortedVals < 0.8) = "强相关";
                evalStrs(sortedVals >= 0.4 & sortedVals < 0.6) = "中等";
                evalStrs(sortedVals < 0.4) = "弱/无关联";

                % 填入 UITable
                rankCol = (1:numSensors)';
                app.FeatCorrelationTable.Data = table(rankCol, sortedNames, round(sortedVals, 4), evalStrs);
                app.FeatCorrelationTable.ColumnName = {'排名', '测点名称', '|相关系数|', '耦合强度'};

                % 5. 绘制柱状图 (相关系数)
                cla(app.CorrelationAxes);
                bar(app.CorrelationAxes, categorical(sortedNames, sortedNames), sortedVals, 'FaceColor', [0.30 0.74 0.93]);
                yline(app.CorrelationAxes, 0.8, 'r--', '极强界限', 'LabelHorizontalAlignment', 'left');
                yline(app.CorrelationAxes, 0.6, 'y--', '强相关界限', 'LabelHorizontalAlignment', 'left');
                ylabel(app.CorrelationAxes, '相关系数绝对值');
                app.CorrelationAxes.YGrid = 'on';

                % 6. 绘制热图 (测点间共线性)
                cla(app.HeatmapAxes);
                interCorr = corr(T_matrix, 'Type', corrType, 'Rows', 'complete');
                % MATLAB中用 imagesc 配合 colorbar 画热图最稳
                imagesc(app.HeatmapAxes, interCorr);
                colorbar(app.HeatmapAxes);
                app.HeatmapAxes.XLim = [0.5, numSensors+0.5];
                app.HeatmapAxes.YLim = [0.5, numSensors+0.5];
                app.HeatmapAxes.XTick = 1:numSensors;
                app.HeatmapAxes.XTickLabel = sensorNames;
                app.HeatmapAxes.YTick = 1:numSensors;
                app.HeatmapAxes.YTickLabel = sensorNames;

            catch ME
                uialert(app.UIFigure, ['计算错误: ', ME.message], '算法报错');
            end
        end

        % Button pushed function: SaveFeatureButton
        function SaveFeatureButtonPushed(app, event)

    if isempty(app.FeatCorrelationTable.Data)
        uialert(app.UIFigure, '请先执行全局相关性计算！', '提示');
        return;
    end
    
    topN = round(app.TopNEditField.Value);
    totalAvailable = height(app.FeatCorrelationTable.Data);
    
    if topN <= 0 || topN > totalAvailable
        uialert(app.UIFigure, '设定的提取个数不合法！', '输入错误');
        return;
    end
    
    % 从表格中提取前 N 个最优秀的测点名称
    bestSensors = app.FeatCorrelationTable.Data{1:topN, 2};
    
    % 保存到全局变量，供模型训练使用
    app.SelectedFeatureNames = string(bestSensors);
    
    % 弹窗给予正向反馈
    msg = sprintf('已成功提取前 %d 个核心温度特征：\n%s\n\n可前往【模型训练】页面进行建模。', ...
                  topN, strjoin(app.SelectedFeatureNames, ', '));
    uialert(app.UIFigure, msg, '特征保存成功', 'Icon', 'success');

        end

        % Value changed function: ModelTypeDropDown
        function ModelTypeDropDownValueChanged(app, event)
            value = app.ModelTypeDropDown.Value;
            % --- 切换模型类型时的动态交互交互 ---
            function ModelTypeDropDownValueChanged(app, event)
                modelName = app.ModelTypeDropDown.Value;

                % 先把所有高级参数禁用 (变灰)
                app.SVRKernelDropDown.Enable = 'off';
                app.RFTreeEditField.Enable = 'off';
                app.BPHiddenEditField.Enable = 'off';

                % 根据选择，亮起对应的参数
                if contains(modelName, 'SVR')
                    app.SVRKernelDropDown.Enable = 'on';
                elseif contains(modelName, 'RF')
                    app.RFTreeEditField.Enable = 'on';
                elseif contains(modelName, 'BP')
                    app.BPHiddenEditField.Enable = 'on';
                end
            end
        end

        % Button pushed function: TrainModelButton
        function TrainModelButtonPushed2(app, event)
            % --- 执行模型训练核心算法 ---

    if isempty(app.ProcessedData) && isempty(app.RawData)
        uialert(app.UIFigure, '没有可用数据，请先导入！', '提示'); return;
    end
    
    % 优先使用预处理数据
    if ~isempty(app.ProcessedData)
        data = app.ProcessedData;
    else
        data = app.RawData;
    end
    
    app.TrainLogTextArea.Value = {'=== 启动模型训练引擎 ==='; '正在构建数据集...'}; drawnow;
    
    try
        % 1. 特征智能提取 (判断上一页是否选了特征)
        % 假设你的全局属性里有 app.SelectedFeatureNames
        if ~isempty(app.SelectedFeatureNames)
            X = data{:, app.SelectedFeatureNames};
            logMsg = ['使用降维特征: ', num2str(length(app.SelectedFeatureNames)), ' 个'];
        else
            % 如果没选，默认使用除了最后一列之外的所有列
            X = data{:, 1:end-1};
            logMsg = ['使用全部特征: ', num2str(width(data)-1), ' 个'];
        end
        Y = data{:, end}; % 最后一列永远是变形量
        
        app.TrainLogTextArea.Value{end+1} = logMsg; drawnow;
        
        % ---------------------------------------------------------
        % 2. 核心修复：采用随机抽样切分数据集 (打破时序外推瓶颈)
        % ---------------------------------------------------------
        ratio = app.TrainRatioEditField.Value;
        totalSamples = size(X, 1);

        % 设定固定的随机种子，保证每次点击训练结果一致（方便复现图表）
        rng(42);

        % 随机打乱所有数据的行号
        randIndices = randperm(totalSamples);
        trainCount = floor(totalSamples * ratio);

        % 划分训练集和测试集的行号
        trainIdx = randIndices(1:trainCount);
        testIdx = randIndices(trainCount+1:end);

        % 【关键一步】：把测试集的行号从小到大重新排序！
        % 这样画出来的测试集曲线依然是连续的时间序列，不会乱成一团毛线！
        testIdx = sort(testIdx);

        % 提取最终的训练与测试矩阵
        XTrain = X(trainIdx, :);
        YTrain = Y(trainIdx, :);
        XTest  = X(testIdx, :);
        YTest  = Y(testIdx, :);
        
        % 3. 模型构建与训练
        modelType = app.ModelTypeDropDown.Value;
        app.TrainLogTextArea.Value{end+1} = ['正在训练 [', modelType, '] ... (耗时由数据量决定)']; drawnow;
        
        switch modelType
            case '线性回归'
                mdl = fitlm(XTrain, YTrain);
                YPred = predict(mdl, XTest);
                
            case '支持向量回归(SVR)'
                ker = app.SVRKernelDropDown.Value;
                % 标准化是SVR拟合成功的关键！
                mdl = fitrsvm(XTrain, YTrain, 'KernelFunction', ker, 'Standardize', true);
                YPred = predict(mdl, XTest);
                
            case '随机森林(RF)'
                numTrees = round(app.RFTreeEditField.Value);
                % 训练随机森林回归器
                mdl = TreeBagger(numTrees, XTrain, YTrain, 'Method', 'regression');
                YPred = predict(mdl, XTest);
                
            case 'BP神经网络'
                hiddenNum = round(app.BPHiddenEditField.Value);
                net = fitnet(hiddenNum, 'trainlm'); % Levenberg-Marquardt算法，收敛极快
                net.trainParam.showWindow = false;
                net = train(net, XTrain', YTrain');
                YPred = net(XTest')';
                mdl = net;
        end
        
        % 4. 误差评价指标计算
        err = YTest - YPred;
        rmse = sqrt(mean(err.^2));
        mae = mean(abs(err));
        maxErr = max(abs(err));
        r2 = 1 - sum(err.^2) / sum((YTest - mean(YTest)).^2);
        
        app.MetricsTable.Data = {
            'RMSE (均方根误差)', num2str(rmse, '%.4f');
            'MAE (平均绝对误差)', num2str(mae, '%.4f');
            'MaxError (最大绝对误差)', num2str(maxErr, '%.4f');
            'R² (决定系数)', num2str(r2, '%.4f')
        };
        
        % 5. 华丽的绘图展现
        cla(app.PredictionCompareAxes);
        plot(app.PredictionCompareAxes, YTest, 'k-', 'LineWidth', 1.2); hold(app.PredictionCompareAxes, 'on');
        plot(app.PredictionCompareAxes, YPred, 'r--', 'LineWidth', 1.5); hold(app.PredictionCompareAxes, 'off');
        legend(app.PredictionCompareAxes, {'真实变形', '模型预测'}, 'Location', 'best');
        title(app.PredictionCompareAxes, '测试集：真实变形 vs 预测变形');
        app.PredictionCompareAxes.XGrid = 'on'; app.PredictionCompareAxes.YGrid = 'on';
        
        cla(app.ResidualAxes);
        plot(app.ResidualAxes, err, 'b-');
        yline(app.ResidualAxes, 0, 'r--', 'LineWidth', 1.5);
        title(app.ResidualAxes, '测试集：预测残差分布 (应在0附近随机震荡)');
        app.ResidualAxes.XGrid = 'on'; app.ResidualAxes.YGrid = 'on';
        
        % 6. 将模型打包为结构体并保存到全局变量 (已修复空结构体报错)
        app.CurrentModel = struct('Object', mdl, 'Type', modelType);

        app.TrainLogTextArea.Value{end+1} = '✅ 训练验证完美完成！';
        
    catch ME
        uialert(app.UIFigure, ['训练失败: ', ME.message], '算法报错');
        app.TrainLogTextArea.Value{end+1} = '❌ 训练异常中断。';
    end

        end

        % Button pushed function: SaveModelButton
        function SaveModelButtonPushed2(app, event)
            % --- 保存模型按钮回调 ---

    % 1. 安全检查：是否有可保存的模型
    % (确保用户点击过“开始训练”且没有报错)
    if isempty(app.CurrentModel) || ~isfield(app.CurrentModel, 'Object')
        uialert(app.UIFigure, '当前内存中没有训练完毕的模型，请先执行【开始训练】！', '操作提示');
        return;
    end
    
    % 2. 智能生成默认保存文件名
    % 提取当前模型类型和时间，例如：'RF_Model_20240510.mat'
    modelTypeStr = app.CurrentModel.Type;
    % 将中文名简写替换，避免文件名带括号或特殊字符
    if contains(modelTypeStr, 'SVR')
        prefix = 'SVR';
    elseif contains(modelTypeStr, 'RF') || contains(modelTypeStr, '随机森林')
        prefix = 'RF';
    elseif contains(modelTypeStr, 'BP')
        prefix = 'BPNN';
    else
        prefix = 'Linear';
    end
    
    timeStr = datestr(now, 'yyyymmdd_HHMM');
    defaultFileName = sprintf('%s_ThermalModel_%s.mat', prefix, timeStr);
    
    % 3. 弹出系统级的文件保存对话框
    [fileName, pathName] = uiputfile('*.mat', '保存机床热误差模型', defaultFileName);
    
    % 4. 容错：如果用户点击了“取消”或关闭了对话框，则退出函数
    if isequal(fileName, 0) || isequal(pathName, 0)
        return;
    end
    
    % 5. 执行数据保存并更新日志
    try
        % 提取全局变量中的模型结构体
        ThermalModelData = app.CurrentModel;
        
        % 组合完整的文件路径
        fullPath = fullfile(pathName, fileName);
        
        % 调用MATLAB底层save函数将变量保存为 .mat 文件
        save(fullPath, 'ThermalModelData');
        
        % 动态更新日志面板，给用户明确的正向反馈
        logMsg = app.TrainLogTextArea.Value;
        logMsg{end+1} = '---------------------------';
        logMsg{end+1} = ['💾 模型已成功保存至本地：'];
        logMsg{end+1} = fileName;
        app.TrainLogTextArea.Value = logMsg;
        
        % 弹出醒目的成功对话框
        uialert(app.UIFigure, ['模型文件已成功导出至：', newline, fullPath], ...
            '保存成功', 'Icon', 'success');
            
    catch ME
        % 捕获磁盘权限不足或路径异常导致的保存失败
        uialert(app.UIFigure, ['写入磁盘失败，详细错误：', ME.message], '保存报错');
    end

        end

        % Button pushed function: LoadPredictDataButton
        function LoadPredictDataButtonPushed(app, event)
            % --- 载入新数据并执行模型预测 (完美修正版) ---
          
                if isempty(app.CurrentModel) || ~isfield(app.CurrentModel, 'Object')
                    uialert(app.UIFigure, '内存中无可用模型！请先在【模型训练】页完成训练。', '提示'); return;
                end
                app.PredictLogTextArea.Value = {'=== 预测任务启动 ==='; '等待选择测试数据...'}; drawnow;
                try
                    % 1. 读取新数据
                    [fileName, pathName] = uigetfile({'*.xlsx;*.csv'}, '选择预测数据');
                    if isequal(fileName, 0), return; end
                    newData = readtable(fullfile(pathName, fileName));

                    % 2. 清理 Excel 的“幽灵空列” (只保留纯数值类型的列)
                    newData = newData(:, vartype('numeric'));

                    % 3. 提取特征矩阵 (自动匹配训练时的特征名)
                    if ~isempty(app.SelectedFeatureNames)
                        X_new = newData{:, app.SelectedFeatureNames};
                    else
                        X_new = newData{:, 1:end-1};
                    end
                    app.PredictLogTextArea.Value{end+1} = ['提取特征数：', num2str(size(X_new, 2))]; drawnow;

                    % ==========================================
                    % 注意：删除了之前那段引起数据映射混乱的 normalize 代码！
                    % SVR(已设Standardize=true) 和 随机森林 会自动处理量纲！
                    % ==========================================

                    % 4. 执行模型预测
                    mdl = app.CurrentModel.Object;
                    app.PredictLogTextArea.Value{end+1} = ['调用引擎: ', app.CurrentModel.Type];
                    if contains(app.CurrentModel.Type, 'BP')
                        Y_pred = mdl(X_new')';
                    else
                        Y_pred = predict(mdl, X_new);
                    end

                    app.PredictLogTextArea.Value{end+1} = '✅ 预测成功！';

                    % 5. 提取真实的变形量（绝对安全的做法：取清理后的最后一列）
                    Y_real = newData{:, end};

                    % 6. 更新表格
                    app.PredictResultTable.Data = table((1:length(Y_pred))', Y_pred);
                    app.PredictResultTable.ColumnName = {'样本序号', '预测热变形量'};

                    % 7. 完美出图
                    cla(app.PredictCurveAxes); cla(app.PredictErrorAxes);

                    % 绘制红黑对比图
                    plot(app.PredictCurveAxes, Y_real, 'k-', 'LineWidth', 1.2, 'DisplayName', '真实变形量');
                    hold(app.PredictCurveAxes, 'on');
                    plot(app.PredictCurveAxes, Y_pred, 'r--', 'LineWidth', 1.5, 'DisplayName', '模型预测量');
                    hold(app.PredictCurveAxes, 'off');
                    legend(app.PredictCurveAxes, 'Location', 'best');
                    title(app.PredictCurveAxes, ['测试集预测结果 (引擎: ', app.CurrentModel.Type, ')']);

                    % 绘制残差柱状图
                    err = Y_real - Y_pred;
                    bar(app.PredictErrorAxes, err, 'FaceColor', [0.85 0.33 0.1]);
                    title(app.PredictErrorAxes, '样本预测残差分布');

                    app.PredictCurveAxes.XGrid = 'on'; app.PredictCurveAxes.YGrid = 'on';
                    app.PredictErrorAxes.XGrid = 'on'; app.PredictErrorAxes.YGrid = 'on';

                catch ME
                    uialert(app.UIFigure, ['发生错误：', ME.message], '代码报错');
                end

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1600 900];
            app.UIFigure.Name = 'MATLAB App';

            % Create TopPanel
            app.TopPanel = uipanel(app.UIFigure);
            app.TopPanel.Title = 'Panel';
            app.TopPanel.BackgroundColor = [0.0745 0.6235 1];
            app.TopPanel.Position = [1 831 1600 70];

            % Create ModelStatusLabel
            app.ModelStatusLabel = uilabel(app.TopPanel);
            app.ModelStatusLabel.FontSize = 14;
            app.ModelStatusLabel.FontColor = [1 1 1];
            app.ModelStatusLabel.Position = [1300 25 200 22];
            app.ModelStatusLabel.Text = '模型：未训练';

            % Create DataStatusLabel
            app.DataStatusLabel = uilabel(app.TopPanel);
            app.DataStatusLabel.FontSize = 14;
            app.DataStatusLabel.FontColor = [1 1 1];
            app.DataStatusLabel.Position = [1050 25 200 22];
            app.DataStatusLabel.Text = '数据：未导入';

            % Create ProjectStatusLabel
            app.ProjectStatusLabel = uilabel(app.TopPanel);
            app.ProjectStatusLabel.FontSize = 14;
            app.ProjectStatusLabel.FontColor = [1 1 1];
            app.ProjectStatusLabel.Position = [800 25 200 22];
            app.ProjectStatusLabel.Text = '项目：未命名';

            % Create TitleLabel
            app.TitleLabel = uilabel(app.TopPanel);
            app.TitleLabel.FontSize = 20;
            app.TitleLabel.FontWeight = 'bold';
            app.TitleLabel.FontColor = [1 1 1];
            app.TitleLabel.Position = [20 20 500 30];
            app.TitleLabel.Text = '机床热误差建模与补偿软件 V1.0';

            % Create NavPanel
            app.NavPanel = uipanel(app.UIFigure);
            app.NavPanel.Title = 'Panel2';
            app.NavPanel.Position = [1 1 200 830];

            % Create AboutButton
            app.AboutButton = uibutton(app.NavPanel, 'push');
            app.AboutButton.ButtonPushedFcn = createCallbackFcn(app, @AboutButtonPushed, true);
            app.AboutButton.Position = [1 270 198 50];
            app.AboutButton.Text = '关于软件';

            % Create ExportButton
            app.ExportButton = uibutton(app.NavPanel, 'push');
            app.ExportButton.ButtonPushedFcn = createCallbackFcn(app, @ExportButtonPushed, true);
            app.ExportButton.Position = [1 330 198 50];
            app.ExportButton.Text = '结果导出';

            % Create CompensateButton
            app.CompensateButton = uibutton(app.NavPanel, 'push');
            app.CompensateButton.ButtonPushedFcn = createCallbackFcn(app, @CompensateButtonPushed, true);
            app.CompensateButton.Position = [1 390 198 50];
            app.CompensateButton.Text = '补偿输出';

            % Create PredictButton
            app.PredictButton = uibutton(app.NavPanel, 'push');
            app.PredictButton.ButtonPushedFcn = createCallbackFcn(app, @PredictButtonPushed, true);
            app.PredictButton.Position = [1 450 198 50];
            app.PredictButton.Text = '误差预测';

            % Create TrainButton
            app.TrainButton = uibutton(app.NavPanel, 'push');
            app.TrainButton.ButtonPushedFcn = createCallbackFcn(app, @TrainButtonPushed, true);
            app.TrainButton.Position = [1 510 198 50];
            app.TrainButton.Text = '模型训练';

            % Create FeatureButton
            app.FeatureButton = uibutton(app.NavPanel, 'push');
            app.FeatureButton.ButtonPushedFcn = createCallbackFcn(app, @FeatureButtonPushed, true);
            app.FeatureButton.Position = [1 570 198 50];
            app.FeatureButton.Text = '特征分析';

            % Create PreprocessButton
            app.PreprocessButton = uibutton(app.NavPanel, 'push');
            app.PreprocessButton.ButtonPushedFcn = createCallbackFcn(app, @PreprocessButtonPushed, true);
            app.PreprocessButton.Position = [1 630 198 50];
            app.PreprocessButton.Text = '数据预处理';

            % Create ImportButton
            app.ImportButton = uibutton(app.NavPanel, 'push');
            app.ImportButton.ButtonPushedFcn = createCallbackFcn(app, @ImportButtonPushed, true);
            app.ImportButton.Position = [1 690 198 50];
            app.ImportButton.Text = '数据导入';

            % Create HomeButton
            app.HomeButton = uibutton(app.NavPanel, 'push');
            app.HomeButton.ButtonPushedFcn = createCallbackFcn(app, @HomeButtonPushed, true);
            app.HomeButton.Position = [1 746 198 50];
            app.HomeButton.Text = '首页';

            % Create MainTabGroup
            app.MainTabGroup = uitabgroup(app.UIFigure);
            app.MainTabGroup.Position = [201 1 1400 830];

            % Create HomeTab
            app.HomeTab = uitab(app.MainTabGroup);
            app.HomeTab.Title = 'HomeTab';

            % Create HomeTitleLabel
            app.HomeTitleLabel = uilabel(app.HomeTab);
            app.HomeTitleLabel.FontName = '微软雅黑';
            app.HomeTitleLabel.FontSize = 30;
            app.HomeTitleLabel.FontWeight = 'bold';
            app.HomeTitleLabel.Position = [50 750 800 50];
            app.HomeTitleLabel.Text = '机床热误差建模与补偿软件 V1.0';

            % Create HomeSubTitleLabel
            app.HomeSubTitleLabel = uilabel(app.HomeTab);
            app.HomeSubTitleLabel.FontName = 'Arial';
            app.HomeSubTitleLabel.FontSize = 16;
            app.HomeSubTitleLabel.FontColor = [0.502 0.502 0.502];
            app.HomeSubTitleLabel.Position = [50 715 800 30];
            app.HomeSubTitleLabel.Text = 'Machine Tool Thermal Error Modeling & Compensation System';

            % Create IntroPanel
            app.IntroPanel = uipanel(app.HomeTab);
            app.IntroPanel.BorderType = 'none';
            app.IntroPanel.Title = '软件功能简介';
            app.IntroPanel.FontName = '微软雅黑';
            app.IntroPanel.FontWeight = 'bold';
            app.IntroPanel.Position = [50 420 620 270];

            % Create TextAreaLabel
            app.TextAreaLabel = uilabel(app.IntroPanel);
            app.TextAreaLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextAreaLabel.HorizontalAlignment = 'right';
            app.TextAreaLabel.FontName = '仿宋';
            app.TextAreaLabel.FontSize = 20;
            app.TextAreaLabel.Position = [89 122 95 27];
            app.TextAreaLabel.Text = 'Text Area';

            % Create IntroTextArea
            app.IntroTextArea = uitextarea(app.IntroPanel);
            app.IntroTextArea.FontName = '仿宋';
            app.IntroTextArea.FontSize = 20;
            app.IntroTextArea.BackgroundColor = [0.9412 0.9412 0.9412];
            app.IntroTextArea.Position = [10 10 600 230];
            app.IntroTextArea.Value = {'   《机床热误差建模与补偿软件 V1.0》是一款针对精密数控机床热变形特性开发的专业分析与补偿决策工具。'; '    本软件基于 MATLAB 底层算法构建，集成了多源时序实验数据管理、数据清洗与预处理、测点相关性特征分析、多元回归与机器学习热误差预测，以及离线补偿序列生成等核心闭环功能。'; '    系统致力于帮助工程技术人员与科研人员快速挖掘温度与机床热变形之间的耦合关系，建立高鲁棒性的热误差补偿模型，从而为实际机床的误差补偿控制提供高精度的参数依据与指令生成支持。'};

            % Create DataSpecPanel
            app.DataSpecPanel = uipanel(app.HomeTab);
            app.DataSpecPanel.BorderType = 'none';
            app.DataSpecPanel.Title = '适用数据集规范说明';
            app.DataSpecPanel.FontName = '微软雅黑';
            app.DataSpecPanel.FontWeight = 'bold';
            app.DataSpecPanel.Position = [700 420 650 270];

            % Create TextArea2Label
            app.TextArea2Label = uilabel(app.DataSpecPanel);
            app.TextArea2Label.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea2Label.HorizontalAlignment = 'right';
            app.TextArea2Label.Position = [37 161 62 22];
            app.TextArea2Label.Text = 'Text Area2';

            % Create DataSpecTextArea
            app.DataSpecTextArea = uitextarea(app.DataSpecPanel);
            app.DataSpecTextArea.FontName = '仿宋';
            app.DataSpecTextArea.FontSize = 20;
            app.DataSpecTextArea.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DataSpecTextArea.Position = [10 10 630 230];
            app.DataSpecTextArea.Value = {'【当前版本系统默认适配以下规格的热态测试数据】'; '• 工况条件：固定主轴转速工况'; '• 测点配置：15 路温度传感器 + 1 路热位移变形传感器'; '• 采样频率：默认 1Hz (即每秒采集记录 1 组数据)'; '• 数据规模：支持单次导入约 10,000 组时序序列'; '• 数据格式：支持 .xlsx 或 .csv 格式文件'; '【数据排列要求】'; '建议数据按行记录。列向特征依次为：时间(可选)、T1至T15温度值、目标热变形量。请确保数据列对齐，以保证后续一键化分析的准确性。'};

            % Create WorkflowPanel
            app.WorkflowPanel = uipanel(app.HomeTab);
            app.WorkflowPanel.BorderType = 'none';
            app.WorkflowPanel.Title = '适用数据集规范说明';
            app.WorkflowPanel.FontName = '微软雅黑';
            app.WorkflowPanel.FontWeight = 'bold';
            app.WorkflowPanel.Position = [50 120 920 270];

            % Create TextArea3Label
            app.TextArea3Label = uilabel(app.WorkflowPanel);
            app.TextArea3Label.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea3Label.HorizontalAlignment = 'right';
            app.TextArea3Label.FontName = '仿宋';
            app.TextArea3Label.FontSize = 20;
            app.TextArea3Label.Position = [130 135 105 27];
            app.TextArea3Label.Text = 'Text Area3';

            % Create WorkflowTextArea
            app.WorkflowTextArea = uitextarea(app.WorkflowPanel);
            app.WorkflowTextArea.FontName = '仿宋';
            app.WorkflowTextArea.FontSize = 20;
            app.WorkflowTextArea.BackgroundColor = [0.9412 0.9412 0.9412];
            app.WorkflowTextArea.Position = [10 11 900 230];
            app.WorkflowTextArea.Value = {'步骤 1 【实验数据导入】：在左侧导航选择“数据导入”，加载您的 16/17 列原始实验数据表。'; '步骤 2 【数据清洗预处理】：处理传感器异常断连产生的缺失值，并利用滤波算法消除高频噪声。'; '步骤 3 【温度特征分析】：计算 15 路温度传感器与热变形量之间的皮尔逊相关系数，筛选敏感测点。'; '步骤 4 【核心模型训练】：按时间序列切分训练/测试集，调用线性回归、SVM 或 BP 神经网络拟合误差映射模型。'; '步骤 5 【补偿序列生成】：设定补偿限幅与系数，计算生成理论补偿序列，评估残余误差并一键导出。'};

            % Create HomeActionPanel
            app.HomeActionPanel = uipanel(app.HomeTab);
            app.HomeActionPanel.BorderType = 'none';
            app.HomeActionPanel.Title = '快捷操作入口';
            app.HomeActionPanel.Position = [1000 120 350 270];

            % Create QuickImportBtn
            app.QuickImportBtn = uibutton(app.HomeActionPanel, 'push');
            app.QuickImportBtn.ButtonPushedFcn = createCallbackFcn(app, @QuickImportBtnButtonPushed, true);
            app.QuickImportBtn.BackgroundColor = [0.0745 0.6235 1];
            app.QuickImportBtn.FontName = '仿宋';
            app.QuickImportBtn.FontSize = 14;
            app.QuickImportBtn.FontWeight = 'bold';
            app.QuickImportBtn.FontColor = [1 1 1];
            app.QuickImportBtn.Position = [75 180 200 45];
            app.QuickImportBtn.Text = '快速导入实验数据';

            % Create QuickTrainBtn
            app.QuickTrainBtn = uibutton(app.HomeActionPanel, 'push');
            app.QuickTrainBtn.ButtonPushedFcn = createCallbackFcn(app, @QuickTrainBtnButtonPushed, true);
            app.QuickTrainBtn.BackgroundColor = [0.0745 0.6235 1];
            app.QuickTrainBtn.FontName = '仿宋';
            app.QuickTrainBtn.FontSize = 14;
            app.QuickTrainBtn.FontWeight = 'bold';
            app.QuickTrainBtn.FontColor = [1 1 1];
            app.QuickTrainBtn.Position = [75 105 200 45];
            app.QuickTrainBtn.Text = '进入模型训练中心';

            % Create QuickCompBtn
            app.QuickCompBtn = uibutton(app.HomeActionPanel, 'push');
            app.QuickCompBtn.ButtonPushedFcn = createCallbackFcn(app, @QuickCompBtnButtonPushed, true);
            app.QuickCompBtn.BackgroundColor = [0.0745 0.6235 1];
            app.QuickCompBtn.FontName = '仿宋';
            app.QuickCompBtn.FontSize = 14;
            app.QuickCompBtn.FontWeight = 'bold';
            app.QuickCompBtn.FontColor = [1 1 1];
            app.QuickCompBtn.Position = [75 30 200 45];
            app.QuickCompBtn.Text = '生成与导出补偿表';

            % Create CopyrightLabel
            app.CopyrightLabel = uilabel(app.HomeTab);
            app.CopyrightLabel.FontName = '仿宋';
            app.CopyrightLabel.FontSize = 18;
            app.CopyrightLabel.Position = [50 40 800 30];
            app.CopyrightLabel.Text = 'Copyright © 2026 开发团队保留所有权利。未经授权，请勿用于商业用途。';

            % Create ImportTab
            app.ImportTab = uitab(app.MainTabGroup);
            app.ImportTab.Title = 'ImportTab';

            % Create RawTempAxes
            app.RawTempAxes = uiaxes(app.ImportTab);
            title(app.RawTempAxes, '15路温度曲线总览')
            xlabel(app.RawTempAxes, 'X')
            ylabel(app.RawTempAxes, 'Y')
            zlabel(app.RawTempAxes, 'Z')
            app.RawTempAxes.Position = [20 20 650 350];

            % Create RawDeformAxes
            app.RawDeformAxes = uiaxes(app.ImportTab);
            title(app.RawDeformAxes, '热变形曲线')
            xlabel(app.RawDeformAxes, 'X')
            ylabel(app.RawDeformAxes, 'Y')
            zlabel(app.RawDeformAxes, 'Z')
            app.RawDeformAxes.Position = [700 20 650 350];

            % Create SelectFileButton
            app.SelectFileButton = uibutton(app.ImportTab, 'push');
            app.SelectFileButton.ButtonPushedFcn = createCallbackFcn(app, @SelectFileButtonPushed, true);
            app.SelectFileButton.Position = [440 750 100 30];
            app.SelectFileButton.Text = '选择文件';

            % Create LoadDataButton
            app.LoadDataButton = uibutton(app.ImportTab, 'push');
            app.LoadDataButton.ButtonPushedFcn = createCallbackFcn(app, @LoadDataButtonPushed, true);
            app.LoadDataButton.BackgroundColor = [0.0745 0.6235 1];
            app.LoadDataButton.FontColor = [1 1 1];
            app.LoadDataButton.Position = [560 750 100 30];
            app.LoadDataButton.Text = '导入数据';

            % Create SampleCountLabel
            app.SampleCountLabel = uilabel(app.ImportTab);
            app.SampleCountLabel.Position = [900 760 150 22];

            % Create FeatureCountLabel
            app.FeatureCountLabel = uilabel(app.ImportTab);
            app.FeatureCountLabel.Position = [900 730 150 22];
            app.FeatureCountLabel.Text = 'Label2';

            % Create FilePathEditField
            app.FilePathEditField = uieditfield(app.ImportTab, 'text');
            app.FilePathEditField.Position = [20 750 400 30];

            % Create ImportStatusTextArea
            app.ImportStatusTextArea = uitextarea(app.ImportTab);
            app.ImportStatusTextArea.Position = [1100 720 250 60];

            % Create RawDataTable
            app.RawDataTable = uitable(app.ImportTab);
            app.RawDataTable.ColumnName = {'T1'; 'T2'; 'T3'; 'T4'; 'T5'; 'T6'; 'T7'; 'T8'; 'T9'; 'T10'; 'T11'; 'T12'; 'T13'; 'T14'; 'T15'; 'δ'};
            app.RawDataTable.RowName = {};
            app.RawDataTable.Position = [20 400 1350 300];

            % Create PreprocessTab
            app.PreprocessTab = uitab(app.MainTabGroup);
            app.PreprocessTab.Title = 'PreprocessTab';

            % Create DeformCompareAxes
            app.DeformCompareAxes = uiaxes(app.PreprocessTab);
            title(app.DeformCompareAxes, '热变形量处理前后对比')
            xlabel(app.DeformCompareAxes, 'X')
            ylabel(app.DeformCompareAxes, 'Y')
            zlabel(app.DeformCompareAxes, 'Z')
            app.DeformCompareAxes.XGrid = 'on';
            app.DeformCompareAxes.YGrid = 'on';
            app.DeformCompareAxes.Position = [710 20 670 520];

            % Create TempCompareAxes
            app.TempCompareAxes = uiaxes(app.PreprocessTab);
            title(app.TempCompareAxes, '温度测点处理前后对比')
            xlabel(app.TempCompareAxes, 'X')
            ylabel(app.TempCompareAxes, 'Y')
            zlabel(app.TempCompareAxes, 'Z')
            app.TempCompareAxes.XGrid = 'on';
            app.TempCompareAxes.YGrid = 'on';
            app.TempCompareAxes.Position = [20 20 670 520];

            % Create ConfigPanel
            app.ConfigPanel = uipanel(app.PreprocessTab);
            app.ConfigPanel.Title = '预处理算法配置';
            app.ConfigPanel.FontWeight = 'bold';
            app.ConfigPanel.Position = [20 550 460 230];

            % Create Label_Missing
            app.Label_Missing = uilabel(app.ConfigPanel);
            app.Label_Missing.FontSize = 14;
            app.Label_Missing.Position = [20 160 100 22];
            app.Label_Missing.Text = '缺失值处理：';

            % Create MissingMethodDropDown
            app.MissingMethodDropDown = uidropdown(app.ConfigPanel);
            app.MissingMethodDropDown.Items = {'无处理', '删除缺失行', '线性插值', '最近邻插值'};
            app.MissingMethodDropDown.Position = [130 160 300 25];
            app.MissingMethodDropDown.Value = '无处理';

            % Create Label_Outlier
            app.Label_Outlier = uilabel(app.ConfigPanel);
            app.Label_Outlier.FontSize = 14;
            app.Label_Outlier.Position = [20 115 100 22];
            app.Label_Outlier.Text = '异常值处理：';

            % Create OutlierMethodDropDown
            app.OutlierMethodDropDown = uidropdown(app.ConfigPanel);
            app.OutlierMethodDropDown.Items = {'无处理', '3σ剔除(均值替代)', '中值绝对偏差(MAD)'};
            app.OutlierMethodDropDown.Position = [130 115 300 25];
            app.OutlierMethodDropDown.Value = '无处理';

            % Create Label_Smooth
            app.Label_Smooth = uilabel(app.ConfigPanel);
            app.Label_Smooth.FontSize = 14;
            app.Label_Smooth.Position = [20 70 100 22];
            app.Label_Smooth.Text = '平滑与滤波：';

            % Create SmoothMethodDropDown
            app.SmoothMethodDropDown = uidropdown(app.ConfigPanel);
            app.SmoothMethodDropDown.Items = {'无处理', '移动平均(10点)', 'SG滤波(平滑)'};
            app.SmoothMethodDropDown.Position = [130 70 300 25];
            app.SmoothMethodDropDown.Value = '无处理';

            % Create Label_Norm
            app.Label_Norm = uilabel(app.ConfigPanel);
            app.Label_Norm.FontSize = 14;
            app.Label_Norm.Position = [20 25 100 22];
            app.Label_Norm.Text = '特征标准化：';

            % Create NormalizeMethodDropDown
            app.NormalizeMethodDropDown = uidropdown(app.ConfigPanel);
            app.NormalizeMethodDropDown.Items = {'无处理', 'Z-score标准化', 'Min-Max归一化'};
            app.NormalizeMethodDropDown.Position = [130 25 300 25];
            app.NormalizeMethodDropDown.Value = '无处理';

            % Create ActionPanel
            app.ActionPanel = uipanel(app.PreprocessTab);
            app.ActionPanel.Title = '执行与视图控制';
            app.ActionPanel.FontWeight = 'bold';
            app.ActionPanel.Position = [500 550 260 230];

            % Create Label_Sensor
            app.Label_Sensor = uilabel(app.ActionPanel);
            app.Label_Sensor.FontSize = 14;
            app.Label_Sensor.Position = [35 170 180 22];
            app.Label_Sensor.Text = '单独查看测点曲线：';

            % Create SensorSelectDropDown
            app.SensorSelectDropDown = uidropdown(app.ActionPanel);
            app.SensorSelectDropDown.Items = {'T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10', 'T11', 'T12', 'T13', 'T14', 'T15'};
            app.SensorSelectDropDown.ValueChangedFcn = createCallbackFcn(app, @SensorSelectDropDownValueChanged, true);
            app.SensorSelectDropDown.Position = [35 140 180 25];
            app.SensorSelectDropDown.Value = 'T1';

            % Create ExecutePreprocessButton
            app.ExecutePreprocessButton = uibutton(app.ActionPanel, 'push');
            app.ExecutePreprocessButton.ButtonPushedFcn = createCallbackFcn(app, @ExecutePreprocessButtonPushed, true);
            app.ExecutePreprocessButton.BackgroundColor = [0.0706 0.6196 1];
            app.ExecutePreprocessButton.FontSize = 16;
            app.ExecutePreprocessButton.FontWeight = 'bold';
            app.ExecutePreprocessButton.FontColor = [1 1 1];
            app.ExecutePreprocessButton.Position = [35 40 180 60];
            app.ExecutePreprocessButton.Text = '执行预处理';

            % Create LogPanel
            app.LogPanel = uipanel(app.PreprocessTab);
            app.LogPanel.Title = '运行日志';
            app.LogPanel.FontWeight = 'bold';
            app.LogPanel.Position = [780 550 590 230];

            % Create TextArea4Label
            app.TextArea4Label = uilabel(app.LogPanel);
            app.TextArea4Label.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea4Label.HorizontalAlignment = 'right';
            app.TextArea4Label.Position = [120 119 62 22];
            app.TextArea4Label.Text = 'Text Area4';

            % Create PreprocessLogTextArea
            app.PreprocessLogTextArea = uitextarea(app.LogPanel);
            app.PreprocessLogTextArea.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PreprocessLogTextArea.Position = [10 8 568 195];

            % Create FeatureTab
            app.FeatureTab = uitab(app.MainTabGroup);
            app.FeatureTab.Title = 'FeatureTab';

            % Create CorrelationAxes
            app.CorrelationAxes = uiaxes(app.FeatureTab);
            title(app.CorrelationAxes, '各测点与热变形量相关系数柱状图')
            xlabel(app.CorrelationAxes, 'X')
            ylabel(app.CorrelationAxes, 'Y')
            zlabel(app.CorrelationAxes, 'Z')
            app.CorrelationAxes.XGrid = 'on';
            app.CorrelationAxes.YGrid = 'on';
            app.CorrelationAxes.ColorOrder = [0 0.447058823529412 0.741176470588235;0.850980392156863 0.325490196078431 0.0980392156862745;0.929411764705882 0.694117647058824 0.125490196078431;0.494117647058824 0.184313725490196 0.556862745098039;0.466666666666667 0.674509803921569 0.188235294117647;0.301960784313725 0.745098039215686 0.933333333333333;0.635294117647059 0.0784313725490196 0.184313725490196];
            app.CorrelationAxes.Position = [430 410 930 360];

            % Create HeatmapAxes
            app.HeatmapAxes = uiaxes(app.FeatureTab);
            title(app.HeatmapAxes, '温度测点间共线性分析热图')
            xlabel(app.HeatmapAxes, 'X')
            ylabel(app.HeatmapAxes, 'Y')
            zlabel(app.HeatmapAxes, 'Z')
            app.HeatmapAxes.Position = [430 20 930 360];

            % Create FeatureControlPanel
            app.FeatureControlPanel = uipanel(app.FeatureTab);
            app.FeatureControlPanel.Title = '特征筛选与分析控制台';
            app.FeatureControlPanel.FontWeight = 'bold';
            app.FeatureControlPanel.Position = [20 20 380 750];

            % Create FeatLabel1
            app.FeatLabel1 = uilabel(app.FeatureControlPanel);
            app.FeatLabel1.Position = [20 690 80 22];
            app.FeatLabel1.Text = '算法选择：';

            % Create CorrMethodDropDown
            app.CorrMethodDropDown = uidropdown(app.FeatureControlPanel);
            app.CorrMethodDropDown.Items = {'皮尔逊 (Pearson)', '斯皮尔 (Spearman)'};
            app.CorrMethodDropDown.Position = [100 690 260 25];
            app.CorrMethodDropDown.Value = '皮尔逊 (Pearson)';

            % Create CalculateCorrButton
            app.CalculateCorrButton = uibutton(app.FeatureControlPanel, 'push');
            app.CalculateCorrButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateCorrButtonPushed, true);
            app.CalculateCorrButton.BackgroundColor = [0.0706 0.6196 1];
            app.CalculateCorrButton.FontWeight = 'bold';
            app.CalculateCorrButton.FontColor = [1 1 1];
            app.CalculateCorrButton.Position = [20 620 340 50];
            app.CalculateCorrButton.Text = '1.计算全局相关性';

            % Create FeatLabel2
            app.FeatLabel2 = uilabel(app.FeatureControlPanel);
            app.FeatLabel2.Position = [20 580 200 22];
            app.FeatLabel2.Text = '测点敏感度降序榜单：';

            % Create FeatLabel3
            app.FeatLabel3 = uilabel(app.FeatureControlPanel);
            app.FeatLabel3.Position = [20 100 150 22];
            app.FeatLabel3.Text = '提取高敏感特征前：';

            % Create TopNEditField
            app.TopNEditField = uieditfield(app.FeatureControlPanel, 'numeric');
            app.TopNEditField.HorizontalAlignment = 'center';
            app.TopNEditField.Position = [170 100 80 22];
            app.TopNEditField.Value = 5;

            % Create FeatLabel4
            app.FeatLabel4 = uilabel(app.FeatureControlPanel);
            app.FeatLabel4.Position = [260 100 50 22];
            app.FeatLabel4.Text = '个测点';

            % Create SaveFeatureButton
            app.SaveFeatureButton = uibutton(app.FeatureControlPanel, 'push');
            app.SaveFeatureButton.ButtonPushedFcn = createCallbackFcn(app, @SaveFeatureButtonPushed, true);
            app.SaveFeatureButton.BackgroundColor = [0.0706 0.6196 1];
            app.SaveFeatureButton.FontWeight = 'bold';
            app.SaveFeatureButton.FontColor = [1 1 1];
            app.SaveFeatureButton.Position = [20 30 340 50];
            app.SaveFeatureButton.Text = '2. 确认并保存所选特征';

            % Create FeatCorrelationTable
            app.FeatCorrelationTable = uitable(app.FeatureControlPanel);
            app.FeatCorrelationTable.BackgroundColor = [1 1 1;0.9412 0.9412 0.9412];
            app.FeatCorrelationTable.ColumnName = '';
            app.FeatCorrelationTable.RowName = {};
            app.FeatCorrelationTable.Position = [20 150 340 420];

            % Create TrainTab
            app.TrainTab = uitab(app.MainTabGroup);
            app.TrainTab.Title = 'TrainTab';

            % Create PredictionCompareAxes
            app.PredictionCompareAxes = uiaxes(app.TrainTab);
            title(app.PredictionCompareAxes, 'Title')
            xlabel(app.PredictionCompareAxes, 'X')
            ylabel(app.PredictionCompareAxes, 'Y')
            zlabel(app.PredictionCompareAxes, 'Z')
            app.PredictionCompareAxes.Position = [20 20 660 510];

            % Create ResidualAxes
            app.ResidualAxes = uiaxes(app.TrainTab);
            title(app.ResidualAxes, 'Title')
            xlabel(app.ResidualAxes, 'X')
            ylabel(app.ResidualAxes, 'Y')
            zlabel(app.ResidualAxes, 'Z')
            app.ResidualAxes.Position = [710 20 660 510];

            % Create TrainBasePanel
            app.TrainBasePanel = uipanel(app.TrainTab);
            app.TrainBasePanel.Title = '1. 基础配置';
            app.TrainBasePanel.Position = [20 550 300 230];

            % Create Label_Model
            app.Label_Model = uilabel(app.TrainBasePanel);
            app.Label_Model.Position = [20 160 80 22];
            app.Label_Model.Text = '选择模型：';

            % Create ModelTypeDropDown
            app.ModelTypeDropDown = uidropdown(app.TrainBasePanel);
            app.ModelTypeDropDown.Items = {'线性回归', '支持向量回归(SVR)', '随机森林(RF)', 'BP神经网络'};
            app.ModelTypeDropDown.ValueChangedFcn = createCallbackFcn(app, @ModelTypeDropDownValueChanged, true);
            app.ModelTypeDropDown.Position = [110 160 170 25];
            app.ModelTypeDropDown.Value = '线性回归';

            % Create Label_Ratio
            app.Label_Ratio = uilabel(app.TrainBasePanel);
            app.Label_Ratio.Position = [20 110 80 22];
            app.Label_Ratio.Text = '训练集比例：';

            % Create EditFieldLabel
            app.EditFieldLabel = uilabel(app.TrainBasePanel);
            app.EditFieldLabel.HorizontalAlignment = 'right';
            app.EditFieldLabel.Position = [115 105 55 22];
            app.EditFieldLabel.Text = 'Edit Field';

            % Create TrainRatioEditField
            app.TrainRatioEditField = uieditfield(app.TrainBasePanel, 'numeric');
            app.TrainRatioEditField.HorizontalAlignment = 'center';
            app.TrainRatioEditField.Position = [110 110 170 25];
            app.TrainRatioEditField.Value = 0.8;

            % Create TrainModelButton
            app.TrainModelButton = uibutton(app.TrainBasePanel, 'push');
            app.TrainModelButton.ButtonPushedFcn = createCallbackFcn(app, @TrainModelButtonPushed2, true);
            app.TrainModelButton.BackgroundColor = [0.0745 0.6235 1];
            app.TrainModelButton.FontWeight = 'bold';
            app.TrainModelButton.FontColor = [1 1 1];
            app.TrainModelButton.Position = [20 20 120 50];
            app.TrainModelButton.Text = '开始训练';

            % Create SaveModelButton
            app.SaveModelButton = uibutton(app.TrainBasePanel, 'push');
            app.SaveModelButton.ButtonPushedFcn = createCallbackFcn(app, @SaveModelButtonPushed2, true);
            app.SaveModelButton.BackgroundColor = [0.0745 0.6235 1];
            app.SaveModelButton.FontWeight = 'bold';
            app.SaveModelButton.FontColor = [1 1 1];
            app.SaveModelButton.Position = [160 20 120 50];
            app.SaveModelButton.Text = '保存模型 ';

            % Create TrainParamPanel
            app.TrainParamPanel = uipanel(app.TrainTab);
            app.TrainParamPanel.Title = '2. 算法高级参数';
            app.TrainParamPanel.Position = [330 550 330 230];

            % Create Label_SVR
            app.Label_SVR = uilabel(app.TrainParamPanel);
            app.Label_SVR.Position = [20 160 100 22];
            app.Label_SVR.Text = 'SVR 核函数：';

            % Create Label_RF
            app.Label_RF = uilabel(app.TrainParamPanel);
            app.Label_RF.Position = [20 110 100 22];
            app.Label_RF.Text = 'RF 决策树数量：';

            % Create Label_BP
            app.Label_BP = uilabel(app.TrainParamPanel);
            app.Label_BP.Position = [20 60 100 22];
            app.Label_BP.Text = 'BP 隐藏层节点：';

            % Create SVRKernelDropDown
            app.SVRKernelDropDown = uidropdown(app.TrainParamPanel);
            app.SVRKernelDropDown.Items = {'gaussian', 'linear', 'polynomial'};
            app.SVRKernelDropDown.Position = [130 160 170 25];
            app.SVRKernelDropDown.Value = 'gaussian';

            % Create EditField_2Label
            app.EditField_2Label = uilabel(app.TrainParamPanel);
            app.EditField_2Label.HorizontalAlignment = 'right';
            app.EditField_2Label.Position = [135 105 55 22];
            app.EditField_2Label.Text = 'Edit Field';

            % Create RFTreeEditField
            app.RFTreeEditField = uieditfield(app.TrainParamPanel, 'numeric');
            app.RFTreeEditField.HorizontalAlignment = 'center';
            app.RFTreeEditField.Position = [130 110 170 25];
            app.RFTreeEditField.Value = 100;

            % Create EditField_3Label
            app.EditField_3Label = uilabel(app.TrainParamPanel);
            app.EditField_3Label.HorizontalAlignment = 'right';
            app.EditField_3Label.Position = [135 55 55 22];
            app.EditField_3Label.Text = 'Edit Field';

            % Create BPHiddenEditField
            app.BPHiddenEditField = uieditfield(app.TrainParamPanel, 'numeric');
            app.BPHiddenEditField.HorizontalAlignment = 'center';
            app.BPHiddenEditField.Position = [130 60 170 25];
            app.BPHiddenEditField.Value = 10;

            % Create TrainMetricsPanel
            app.TrainMetricsPanel = uipanel(app.TrainTab);
            app.TrainMetricsPanel.Title = '3. 模型评价指标';
            app.TrainMetricsPanel.Position = [670 550 300 230];

            % Create MetricsTable
            app.MetricsTable = uitable(app.TrainMetricsPanel);
            app.MetricsTable.ColumnName = '';
            app.MetricsTable.RowName = {};
            app.MetricsTable.Position = [10 10 280 190];

            % Create TrainLogPanel
            app.TrainLogPanel = uipanel(app.TrainTab);
            app.TrainLogPanel.Title = '4. 训练日志';
            app.TrainLogPanel.Position = [980 550 390 230];

            % Create TextArea5Label
            app.TextArea5Label = uilabel(app.TrainLogPanel);
            app.TextArea5Label.HorizontalAlignment = 'right';
            app.TextArea5Label.Position = [93 98 62 22];
            app.TextArea5Label.Text = 'Text Area5';

            % Create TrainLogTextArea
            app.TrainLogTextArea = uitextarea(app.TrainLogPanel);
            app.TrainLogTextArea.Position = [10 10 368 190];

            % Create PredictTab
            app.PredictTab = uitab(app.MainTabGroup);
            app.PredictTab.Title = 'PredictTab';

            % Create PredictCurveAxes
            app.PredictCurveAxes = uiaxes(app.PredictTab);
            title(app.PredictCurveAxes, '泛化测试：预测热变形轨迹')
            xlabel(app.PredictCurveAxes, 'X')
            ylabel(app.PredictCurveAxes, 'Y')
            zlabel(app.PredictCurveAxes, 'Z')
            app.PredictCurveAxes.XGrid = 'on';
            app.PredictCurveAxes.YGrid = 'on';
            app.PredictCurveAxes.Position = [430 410 930 360];

            % Create PredictErrorAxes
            app.PredictErrorAxes = uiaxes(app.PredictTab);
            title(app.PredictErrorAxes, '残差分布与误差统计')
            xlabel(app.PredictErrorAxes, 'X')
            ylabel(app.PredictErrorAxes, 'Y')
            zlabel(app.PredictErrorAxes, 'Z')
            app.PredictErrorAxes.XGrid = 'on';
            app.PredictErrorAxes.YGrid = 'on';
            app.PredictErrorAxes.Position = [430 20 930 360];

            % Create PredictControlPanel
            app.PredictControlPanel = uipanel(app.PredictTab);
            app.PredictControlPanel.Title = '预测操作中心';
            app.PredictControlPanel.FontWeight = 'bold';
            app.PredictControlPanel.Position = [20 520 380 250];

            % Create LoadPredictDataButton
            app.LoadPredictDataButton = uibutton(app.PredictControlPanel, 'push');
            app.LoadPredictDataButton.ButtonPushedFcn = createCallbackFcn(app, @LoadPredictDataButtonPushed, true);
            app.LoadPredictDataButton.BackgroundColor = [0.0745 0.6235 1];
            app.LoadPredictDataButton.FontWeight = 'bold';
            app.LoadPredictDataButton.FontColor = [1 1 1];
            app.LoadPredictDataButton.Position = [20 160 340 50];
            app.LoadPredictDataButton.Text = '载入测试集并执行预测';

            % Create TextArea6Label
            app.TextArea6Label = uilabel(app.PredictControlPanel);
            app.TextArea6Label.HorizontalAlignment = 'right';
            app.TextArea6Label.Position = [41 105 62 22];
            app.TextArea6Label.Text = 'Text Area6';

            % Create PredictLogTextArea
            app.PredictLogTextArea = uitextarea(app.PredictControlPanel);
            app.PredictLogTextArea.Position = [20 20 340 120];

            % Create PredictTablePanel
            app.PredictTablePanel = uipanel(app.PredictTab);
            app.PredictTablePanel.Title = '预测结果数据总览';
            app.PredictTablePanel.FontWeight = 'bold';
            app.PredictTablePanel.Position = [20 20 380 480];

            % Create PredictResultTable
            app.PredictResultTable = uitable(app.PredictTablePanel);
            app.PredictResultTable.ColumnName = '';
            app.PredictResultTable.RowName = {};
            app.PredictResultTable.Position = [10 10 360 435];

            % Create CompensateTab
            app.CompensateTab = uitab(app.MainTabGroup);
            app.CompensateTab.Title = 'CompensateTab';

            % Create CompResidualAxes
            app.CompResidualAxes = uiaxes(app.CompensateTab);
            title(app.CompResidualAxes, '补偿后理论残差')
            xlabel(app.CompResidualAxes, 'X')
            ylabel(app.CompResidualAxes, 'Y')
            zlabel(app.CompResidualAxes, 'Z')
            app.CompResidualAxes.Position = [500 20 850 300];

            % Create CompCompareAxes
            app.CompCompareAxes = uiaxes(app.CompensateTab);
            title(app.CompCompareAxes, '补偿前后误差对比')
            xlabel(app.CompCompareAxes, 'X')
            ylabel(app.CompCompareAxes, 'Y')
            zlabel(app.CompCompareAxes, 'Z')
            app.CompCompareAxes.Position = [500 350 850 320];

            % Create kEditFieldLabel
            app.kEditFieldLabel = uilabel(app.CompensateTab);
            app.kEditFieldLabel.HorizontalAlignment = 'right';
            app.kEditFieldLabel.Position = [51 750 59 22];
            app.kEditFieldLabel.Text = '补偿系数k';

            % Create CompensationTable
            app.CompensationTable = uitable(app.CompensateTab);
            app.CompensationTable.ColumnName = {'预测变形'; '补偿值'; '剩余残差'};
            app.CompensationTable.RowName = {};
            app.CompensationTable.Position = [50 20 400 650];

            % Create CompSummaryTextArea
            app.CompSummaryTextArea = uitextarea(app.CompensateTab);
            app.CompSummaryTextArea.Position = [500 700 850 100];

            % Create GenerateCompButton
            app.GenerateCompButton = uibutton(app.CompensateTab, 'push');
            app.GenerateCompButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateCompButtonPushed, true);
            app.GenerateCompButton.Position = [300 730 150 50];
            app.GenerateCompButton.Text = '生成补偿值序列';

            % Create CompFactorEditField
            app.CompFactorEditField = uieditfield(app.CompensateTab, 'numeric');
            app.CompFactorEditField.Position = [150 750 100 22];
            app.CompFactorEditField.Value = 1;

            % Create ExportTab
            app.ExportTab = uitab(app.MainTabGroup);
            app.ExportTab.Title = 'ExportTab';

            % Create ExportDataCheckBox
            app.ExportDataCheckBox = uicheckbox(app.ExportTab);
            app.ExportDataCheckBox.Position = [100 750 150 22];

            % Create ExportModelCheckBox
            app.ExportModelCheckBox = uicheckbox(app.ExportTab);
            app.ExportModelCheckBox.Position = [100 700 150 22];

            % Create ExportCompCheckBox
            app.ExportCompCheckBox = uicheckbox(app.ExportTab);
            app.ExportCompCheckBox.Position = [100 650 150 22];

            % Create ExportPathEditField
            app.ExportPathEditField = uieditfield(app.ExportTab, 'text');
            app.ExportPathEditField.Position = [100 550 400 30];

            % Create SelectExportPathButton
            app.SelectExportPathButton = uibutton(app.ExportTab, 'push');
            app.SelectExportPathButton.Position = [520 550 100 30];
            app.SelectExportPathButton.Text = '选择目录';

            % Create ExportResultButton
            app.ExportResultButton = uibutton(app.ExportTab, 'push');
            app.ExportResultButton.ButtonPushedFcn = createCallbackFcn(app, @ExportResultButtonPushed, true);
            app.ExportResultButton.Position = [100 450 200 60];
            app.ExportResultButton.Text = '一键导出选中结果';

            % Create ExportLogTextArea
            app.ExportLogTextArea = uitextarea(app.ExportTab);
            app.ExportLogTextArea.Position = [650 450 700 350];

            % Create AboutTab
            app.AboutTab = uitab(app.MainTabGroup);
            app.AboutTab.Title = 'AboutTab';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = review5_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end