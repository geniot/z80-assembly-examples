/*
    Stonewalk map format exporter for Tiled

        LEVEL_DATA {   
        {         
        2,2,6,3,5,2,2,2,2,2,2,2,16,2,0,0,
        2,5,6,3,2,2,6,2,2,2,2,2,15,2,0,0,
        2,2,2,3,2,6,2,2,2,2,2,2,0,2,2,0,
        3,2,3,3,2,2,2,6,2,2,0,0,0,0,2,4,
        2,2,2,6,2,2,2,2,2,2,0,2,0,0,2,0,
        2,2,0,2,2,2,6,2,2,2,2,2,2,2,0,0,
        0,1,0,2,6,2,2,7,2,6,0,2,2,2,0,0,
        2,2,2,2,2,2,2,2,2,2,12,0,0,0,2,2,
        2,2,2,2,2,2,2,2,2,2,0,2,2,0,2,2,
        2,2,2,2,2,2,2,2,2,2,0,2,2,0,2,2,
        0,1,2,3,4,5,6,7,8,2,0,0,0,0,2,2,
        9,10,11,12,13,14,15,16,0,2,2,2,2,2,2,2 },
        {"Testlevel"},
        1,
        {"132"}
        }

*/
var customMapFormat = {
    name: "Stonewalk map format",
    extension: "Asm *.asm",
    write:

    function(p_map, p_fileName) {
        // Split full filename path into the filename (without extension) and the directory
        var fileBaseName = FileInfo.completeBaseName(p_fileName).replace(/[^a-zA-Z0-9-_]/g, "_");
        var filePath = FileInfo.path(p_fileName)+"/";

        // Replace the ‘/’ characters in the file path for ‘\’ on Windows
        filePath = FileInfo.toNativeSeparators(filePath);

        var sourceFileData = "\t\tLEVEL_DATA {\n\t\t{\n";

        for (let i = 0; i < p_map.layerCount; ++i) {
            let currentLayer = p_map.layerAt(i);

            if (currentLayer.isTileLayer) {
                for (let j = 0; j < 12; ++j) {
                    sourceFileData += "\t\t";
                    for (let k = 0; k < 16; ++k) {
                        let x = currentLayer.cellAt(k,j).tileId;
                        if (x > 16) x = 0;
                        sourceFileData += x.toString(10) + ", ";
                    }
                    sourceFileData += "\n";
                }
            }
        }
        sourceFileData += "\t\t},\n";
        sourceFileData += "\t\t{\"" + p_map.properties()["title"] + "\"},\n";
        sourceFileData += "\t\t" + p_map.properties()["gemgoal"].toString(10) + ",\n";
        sourceFileData += "\t\t{\"" + p_map.properties()["gemgoal"].toString(10) + "\"}\n";
        sourceFileData += "\t\t}\n";
        

        // Write source data to disk
        var sourceFile = new TextFile(filePath+fileBaseName+".asm", TextFile.WriteOnly);
        sourceFile.write(sourceFileData);
        sourceFile.commit();
    }
}

tiled.registerMapFormat("stonewalk", customMapFormat)