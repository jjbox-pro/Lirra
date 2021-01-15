#ifndef LOG_H
#define LOG_H

#include <memory>

#include "common.h"
#include "spdlog/spdlog.h"


namespace lirra {
    class LIRRA_API Log
    {
    public:
        static void init();

        static std::shared_ptr<spdlog::logger>& getEngineLogger();
    };
}

#define LIRRA_LOG_TRACE(...)    lirra::Log::getEngineLogger()->trace(__VA_ARGS__);
#define LIRRA_LOG_INFO(...)     lirra::Log::getEngineLogger()->info(__VA_ARGS__);
#define LIRRA_LOG_WARN(...)     lirra::Log::getEngineLogger()->warn(__VA_ARGS__);
#define LIRRA_LOG_ERROR(...)    lirra::Log::getEngineLogger()->error(__VA_ARGS__);
#define LIRRA_LOG_FATAL(...)    lirra::Log::getEngineLogger()->fatal(__VA_ARGS__);

#endif // LOG_H
