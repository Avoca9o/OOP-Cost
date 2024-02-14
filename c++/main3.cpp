class Base {
public:
    virtual void do_nothing() const = 0;
    virtual ~Base() {}
};

class Derived : public Base {
    void do_nothing() const {}
    ~Derived() {}
};

int main() {
    Base* obj = new Derived();
    for (int i = 0; i < 100000000; ++i) {
        obj->do_nothing();
    }
    delete obj;
    return 0;
}
