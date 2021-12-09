path = ["C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC01434Q08V05PD00010_PRE_CIG_0_100705_2_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC01434Q08V05PD00010_PRE_CIG_0_100705_3_L.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC01434Q08V05PD00011_PRE_CIG_0_100705_1_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC01434Q08V05PD00011_PRE_CIG_0_100705_2_L.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC01799Q08V05PD00010_PRE_CIG_0_090406_3_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC01799Q08V05PD00011_PRE_CIG_0_090406_2_L.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC01799Q08V05PD00011_PRE_CIG_0_090406_2_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC05453Q08V05PD00010_PRE_DUO_160627_2_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC05453Q08V05PD00010_PRE_DUO_160627_3_L.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC05453Q08V05PD00011_PRE_DUO_160627_2_L.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC05453Q08V05PD00020_PRE_DUO_161121_2_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC05453Q08V05PD00020_PRE_DUO_161121_3_L.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC12026Q41V08PD00010_PRE_CIG_0_200921_2_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC12026Q41V08PD00011_PRE_CIG_0_200921_0_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC12026Q41V08PD00021_PRE_CIG_0_201214_1_R.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC12026Q41V09PD00011_PRE_CIG_0_200921_1_L.csv";
        "C:\Users\diego.rodriguez\OneDrive - Izertis\Data\Varkinson\Distancias_FT\IC12026Q41V09PD00021_PRE_CIG_0_201214_1_L.csv"]
timeSeriesData = cell(length(path),1);
labels = cell(length(path),1);
keywords = cell(length(path),1);

for i = 1:length(path)
    split1 = split(path(i),"_");
    split2 = split(path(i),".");
    split3 = split(split2(2),'\');
    keywords{i} = char(split1(end-1));
    timeSeriesData(i) = {table2array(readtable(path(i)))};
    labels{i} = char(split3(end));
end
save('Data','timeSeriesData','keywords','labels')

