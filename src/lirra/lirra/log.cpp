#include "log.h"
#include "spdlog/sinks/stdout_color_sinks.h"

namespace lirra {
    void Log::init()
    {
        spdlog::set_pattern("%^[%T] %n: %v%$");

        Log::getEngineLogger()->set_level(spdlog::level::trace);

        LIRRA_LOG_TRACE("Logger inited!")
    }

    std::shared_ptr<spdlog::logger>& Log::getEngineLogger()
    {
        static std::shared_ptr<spdlog::logger> s_logger = spdlog::stdout_color_mt("lirra");

        return s_logger;
    }
}
