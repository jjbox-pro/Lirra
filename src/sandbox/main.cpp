#include <lirra.h>

class Sandbox : public lirra::Application{
public:
    Sandbox(){};

    ~Sandbox(){};

    void run(){
        std::cout << "Sandbox" << std::endl;
    };
};

lirra::Application* lirra::createApplication(){
    return new Sandbox();
};
