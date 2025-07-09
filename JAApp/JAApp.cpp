//#include "stdafx.h"
#include "tchar.h"
#include <thread>
#include <iostream>
#include <vector>
#include <chrono>
#include <stdexcept>
#include <ostream>
#include <iomanip>
#include <sstream>
#include <SFML/Graphics.hpp>
#include "funkcje.h"
#include "zegar.h"
#include "cfun.h"
#include "libsndfile-master/include/sndfile.h"
#include <cfun.h>
#include <windows.h>
#include <commdlg.h>
#include <sstream>
#include <filesystem>

extern "C" void MyProc1(float* buffer, float* threshold, size_t numElements, float* fof);
extern "C" void _fastcall ngfun(std::vector<float>&x, float y, int z, int c);

void process_audio_data(float* buffer, float* threshhold, int start_frame, int end_frame, int channels, float* fof) {
    size_t num_samples = (end_frame - start_frame) * channels;
    MyProc1(buffer + start_frame * channels, threshhold, num_samples, fof);
}

std::string CreateOutputFilePath(const std::string& inputFilePath) {
    std::filesystem::path path(inputFilePath);
    std::string fileName = path.stem().string();
    std::string extension = path.extension().string();
    std::ostringstream outputPath;
    outputPath << path.parent_path().string() << "/" << fileName << "_odszumiony" << extension;
    return outputPath.str();
}

const char* OpenFileExplorer() {
    static char filePath[MAX_PATH] = { 0 };

    OPENFILENAME ofn;
    ZeroMemory(&ofn, sizeof(ofn));
    ofn.lStructSize = sizeof(ofn);
    ofn.hwndOwner = NULL; 
    ofn.lpstrFilter = "All Files\0*.*\0Text Files\0*.TXT\0";
    ofn.lpstrFile = filePath; 
    ofn.nMaxFile = MAX_PATH;
    ofn.Flags = OFN_PATHMUSTEXIST | OFN_FILEMUSTEXIST;
    ofn.lpstrTitle = "Select a File";

    if (GetOpenFileName(&ofn)) {
        return filePath;
    }
    else {
        return nullptr;
    }
}

int _tmain(int argc, _TCHAR* argv[])
{
    while (true)
    {
        const char* selectedFilePath = OpenFileExplorer();
        if (!selectedFilePath) {
            std::cerr << "No file selected.\n";
            continue;
        }

        std::string inputFilePath = selectedFilePath;
        std::string outputFilePath = CreateOutputFilePath(inputFilePath);

        float threshhold;
        int number_of_threads;
        while (true) {
            std::cout << "Wprowadz liczbe watkow: \n";
            std::cin >> number_of_threads;
            if (number_of_threads <= 0) {
                std::cout << "Ilosc watkow musi byc wieksza od 0\n";
            }
            else {
                break;
            }
        }

        std::cout << "Wprowadz threshold (od 0 do 100): \n";
        std::cin >> threshhold;
        threshhold = threshhold / 100;

        const char* inputFile = inputFilePath.c_str();
        const char* outputFile = outputFilePath.c_str();

        SF_INFO sfInfo;
        SNDFILE* inFile = sf_open(inputFile, SFM_READ, &sfInfo);
        if (!inFile) {
            std::cerr << "Error opening input file: " << sf_strerror(inFile) << std::endl;
            return -1;
        }
    //
    //graphic
    //
    sf::Font font;
    if (!font.loadFromFile("C:/Users/miesz/Downloads/JASol (2)/JASol/x64/Release/Arial.ttf")) {
        std::cerr << "Error loading font\n";
        return -1;
    }
    sf::Text clockText("", font, 24);
    clockText.setPosition(270, 440);
    sf::Text instruction("Wybierz jezyk wykonania programu", font, 24);
    instruction.setPosition(325, 100);
    sf::Text languagechosen("Plik jest odszumiany, zabralo to juz: \n", font, 24);
    languagechosen.setPosition(325, 100);
    sf::RectangleShape cplus;
    cplus.setSize(sf::Vector2f(150, 60));
    cplus.setFillColor(sf::Color::Green);
    cplus.setPosition(275, 300);
    sf::RectangleShape asmg;
    asmg.setSize(sf::Vector2f(150, 60));
    asmg.setFillColor(sf::Color::Red);
    asmg.setPosition(600, 300);
    sf::Text cplustext("C++", font, 36);
    cplustext.setPosition(315, 305);
    sf::Text asmgtext("ASM", font, 36);
    asmgtext.setPosition(640, 305);
    sf::RenderWindow window(sf::VideoMode(1000, 800), "Usuwanie szumów");
    window.setFramerateLimit(60);
    int clock_init = 0;
    sf::Vector2i myszka;
    Clock zegar;
    //
    //File loading
    //
    if (!inFile) {
        std::cerr << "Error opening input file: " << sf_strerror(inFile) << std::endl;
        return -1;
    }
    std::vector<float> buffer(sfInfo.frames * sfInfo.channels);
    sf_count_t numFrames = sf_readf_float(inFile, buffer.data(), sfInfo.frames);
    sf_close(inFile);

    //
    //logic
    //
    int ten = 10;
    std::vector<int>sub_bitmaps;
    calculate_optimal_sizes(buffer, number_of_threads, sub_bitmaps);
    std::vector<std::thread>threads;
    int bitmap_it = 0;
    int sub_bitmaps_it = 0;
    int progress = 0;
    int channels = sfInfo.channels;
    float fof = 0.0;
    std::string time_it_took;
    while (window.isOpen()) {
        while (progress == 0) {
            sf::Event event;
            while (window.pollEvent(event)) {
                if (event.type == sf::Event::Closed) {
                    window.close();
                }
                if (event.type == sf::Event::KeyPressed) {
                    if (event.key.code == sf::Keyboard::Escape) {
                        window.close();
                    }
                }
                if (event.type == sf::Event::MouseButtonPressed) {
                    if (event.mouseButton.button == sf::Mouse::Left) {
                        myszka = sf::Mouse::getPosition(window);
                        std::cout << "Mouse position: " << myszka.x << " " << myszka.y << std::endl;
                        if (myszka.y < 360 && myszka.y > 240) {
                            if (myszka.x > 275 && myszka.x < 425) {
                                progress = 1;
                                // RUN C++
                                break;
                            }
                            if (myszka.x > 640 && myszka.x < 790) {
                                progress = 2;
                                // RUN ASM
                                break;
                            }
                        }
                    }
                }
            }
            window.clear();
            window.draw(cplus);
            window.draw(cplustext);
            window.draw(asmg);
            window.draw(asmgtext);
            window.draw(instruction);
            window.display();
        }
        while (progress != 0) {
            sf::Event event;
            while (window.pollEvent(event)) {
                if (event.type == sf::Event::Closed) {
                    window.close();
                }

                if (event.type == sf::Event::KeyPressed) {
                    if (event.key.code == sf::Keyboard::Escape) {
                        window.close();
                    }
                }
                if (progress == 1) {
                    zegar.start();
                    int start_frame = 0;
                    for (int j = 0; j < number_of_threads; j++) {
                        int channels = sfInfo.channels;
                        int end_frame = start_frame + (sub_bitmaps[j]);
                        std::thread t1([&buffer, threshhold, start_frame, end_frame, channels]() {
                            ngfun(buffer, threshhold, start_frame, end_frame);
                            });
                        threads.push_back(std::move(t1));
                        start_frame = end_frame;
                    }
                    for (int i = 0; i < threads.size(); i++)
                    {
                        threads[i].join();
                    }
                    time_it_took = zegar.getElapsedTime();
                    zegar.stop();
                    SNDFILE* outFile = sf_open(outputFile, SFM_WRITE, &sfInfo);
                    if (!outFile) {
                        std::cerr << "Nie można otworzyć pliku wyjściowego: " << sf_strerror(outFile) << std::endl;
                        return -1;
                    }
                    sf_writef_float(outFile, buffer.data(), numFrames);
                    sf_close(outFile);

                    std::cout << "Przetwarzanie pliku zakończone" << std::endl;

                    progress = 3;
                }
                if (progress == 2) {

                    int start_frame = 0;
                    zegar.start();
                    for (int j = 0; j < number_of_threads; j++) {
                        int end_frame = start_frame + (sub_bitmaps[j] / channels);
                        threads.emplace_back([&buffer, &threshhold, start_frame, end_frame, channels, &fof]() {
                            process_audio_data(buffer.data(), &threshhold, start_frame, end_frame, channels, &fof);
                            });
                        start_frame = end_frame;
                    }
                    for (int i = 0; i < threads.size(); i++)
                    {
                        threads[i].join();
                    }
                    time_it_took = zegar.getElapsedTime();
                    zegar.stop();
                    SNDFILE* outFile = sf_open(outputFile, SFM_WRITE, &sfInfo);
                    if (!outFile) {
                        std::cerr << "Nie można otworzyć pliku wyjściowego: " << sf_strerror(outFile) << std::endl;
                        return -1;
                    }
                    sf_writef_float(outFile, buffer.data(), numFrames);
                    sf_close(outFile);
                    std::cout << std::endl;
                    std::cout << "Przetwarzanie pliku zakończone" << std::endl;

                    progress = 4;
                }
                window.clear();
                window.draw(languagechosen);
                clockText.setString("" + time_it_took);
                window.draw(clockText);
                window.display();
            }
            if (progress == 3)
            {
                languagechosen.setString("Zakonczono odzumianie pliku, uzywajac c++, zajelo to: \n");
                break;
            }
            if (progress == 4)
            {
                languagechosen.setString("Zakonczono odzumianie pliku, uzywajac assemblera, zajelo to: \n");
                break;
            }
        }
    }
}
}