#ifndef ENTRY_POINT_H
#define ENTRY_POINT_H


#ifdef LIRRA_PLATFORM_WINDOWS
    int main(int argc, char** argv)
    {
        lirra::Log::init();

        auto app = lirra::createApplication();

        app->run();

        delete app;

        std::cin.get();

        return 0;
    }
#endif


#endif // ENTRY_POINT_H
