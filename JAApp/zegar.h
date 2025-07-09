#pragma once
class Clock {
public:
    Clock() : running(false) {}
    void start()
    {
        start_time = std::chrono::system_clock::now();
        running = true;
    }

    void stop()
    {
        running = false;
    }
    ~Clock()
    {
        stop();
    }
    std::string getElapsedTime() {
        if (running) {
            auto now = std::chrono::system_clock::now();
            auto elapsed = now - start_time;
            auto hours = std::chrono::duration_cast<std::chrono::hours>(elapsed).count();
            auto minutes = std::chrono::duration_cast<std::chrono::minutes>(elapsed).count() % 60;
            auto seconds = std::chrono::duration_cast<std::chrono::seconds>(elapsed).count() % 60;
            auto milliseconds = std::chrono::duration_cast<std::chrono::milliseconds>(elapsed).count() % 1000;
            auto microseconds = std::chrono::duration_cast<std::chrono::microseconds>(elapsed).count() % 1000;

            std::ostringstream oss;
            oss << std::setfill('0') << std::setw(2) << hours << ":"
                << std::setfill('0') << std::setw(2) << minutes << ":"
                << std::setfill('0') << std::setw(2) << seconds << ":"
                << std::setfill('0') << std::setw(3) << milliseconds << ":"
                << std::setfill('0') << std::setw(3) << microseconds;
            return oss.str();
        }
        else {
            return "00:00:00:000:000";
        }
    }
private:
    std::atomic<bool> running;
    std::chrono::time_point<std::chrono::system_clock> start_time;
};