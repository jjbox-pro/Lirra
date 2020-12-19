#ifndef APPLICATION_H
#define APPLICATION_H

#include "common.h"


namespace lirra {
    class LIRRA_API Application
    {
    public:
        Application();

        virtual ~Application();

        void run();
    };

    Application* createApplication();
}

#endif // APPLICATION_H
