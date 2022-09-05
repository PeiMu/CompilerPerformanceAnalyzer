#include <cassert>
#include <iostream>
#include <fstream>
#include <string>
#include <unistd.h>


int main(int argc, char** argv) {
    std::string before_opt, after_opt;
    if (argc == 3) {
        before_opt = argv[1];
        after_opt = argv[2];
    } else {
        std::cout << "need to input the file name before and after opt!" << std::endl;
    }
    // get current work path
    std::string cwd;
    if ((cwd = getcwd(nullptr, 0)).data() == nullptr) {
        std::cout << "get current work path failed" << std::endl;
        assert(false);
    } else {
        size_t pos = cwd.find("/cmake-build-debug");
        if (pos != std::string::npos) {
            cwd.erase(pos);
        }
    }

    // read llvm IR
    std::ifstream llvmBeforeIrFile(cwd + "/src/ir_files" + "/" + before_opt);
    if (!llvmBeforeIrFile.is_open()) {
        std::cout << "open before IR file failed" << std::endl;
        assert(false);
    }
    std::ifstream llvmAfterIrFile(cwd + "/src/ir_files" + "/" + after_opt);
    if (!llvmAfterIrFile.is_open()) {
        std::cout << "open after IR file failed" << std::endl;
        assert(false);
    }

    std::string line, llvmBeforeIR, llvmAfterIR;
    while (std::getline(llvmBeforeIrFile, line)) {
        llvmBeforeIR+=line+"\n";
    }
    llvmBeforeIrFile.close();
    while (std::getline(llvmAfterIrFile, line)) {
        llvmAfterIR+=line+"\n";
    }
    llvmAfterIrFile.close();

    // show IR
//    llvm::SMDiagnostic err;
//    llvm::LLVMContext context;
//    std::cout << llvmBeforeIR << std::endl;
//    std::cout << llvmAfterIR << std::endl;

    std::cout << "start compare:" << std::endl;
//    std::string diffCmd = "diff -y " + cwd + "/ir_files" + "/" + before_opt
//            + " "  + cwd + "/ir_files" + "/" + after_opt;
    std::string diffCmd = "git diff " + cwd + "/src/ir_files" + "/" + before_opt
            + " 2>&1|tee" + " " + cwd + "/src/config.js";
    system(diffCmd.c_str());

    // add js head and tail
    std::ifstream testDiff_Js(cwd + "/src/config.js");
    if (!testDiff_Js.is_open()) {
        std::cout << "open after test_diff.js file failed" << std::endl;
        assert(false);
    }
    std::string diffJs;
    while (std::getline(testDiff_Js, line)) {
        diffJs+=line+"\n";
    }
    testDiff_Js.close();
    std::string configHead = "export const diffStr = ";
    diffJs = configHead + "'" + diffJs + "';";
    std::ofstream testDiffWrite(cwd + "/src/config.js");
    if (!testDiffWrite.is_open()) {
        std::cout << "open after config.js file failed" << std::endl;
        assert(false);
    }
    testDiffWrite << diffJs << std::endl;
    testDiffWrite.close();

    return 0;
}