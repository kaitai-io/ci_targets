#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_pass_array_struct_t : public kaitai::kstruct {

public:
    class bar_t;
    class foo_t;
    class struct_type_t;

    params_pass_array_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_pass_array_struct_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~params_pass_array_struct_t();

    class bar_t : public kaitai::kstruct {

    public:

        bar_t(kaitai::kstream* p__io, params_pass_array_struct_t* p__parent = nullptr, params_pass_array_struct_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~bar_t();

    private:
        uint8_t m_b;
        params_pass_array_struct_t* m__root;
        params_pass_array_struct_t* m__parent;

    public:
        uint8_t b() const { return m_b; }
        params_pass_array_struct_t* _root() const { return m__root; }
        params_pass_array_struct_t* _parent() const { return m__parent; }
    };

    class foo_t : public kaitai::kstruct {

    public:

        foo_t(kaitai::kstream* p__io, params_pass_array_struct_t* p__parent = nullptr, params_pass_array_struct_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~foo_t();

    private:
        uint8_t m_f;
        params_pass_array_struct_t* m__root;
        params_pass_array_struct_t* m__parent;

    public:
        uint8_t f() const { return m_f; }
        params_pass_array_struct_t* _root() const { return m__root; }
        params_pass_array_struct_t* _parent() const { return m__parent; }
    };

    class struct_type_t : public kaitai::kstruct {

    public:

        struct_type_t(std::vector<kaitai::kstruct*>* p_structs, kaitai::kstream* p__io, params_pass_array_struct_t* p__parent = nullptr, params_pass_array_struct_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~struct_type_t();

    private:
        std::vector<kaitai::kstruct*>* m_structs;
        params_pass_array_struct_t* m__root;
        params_pass_array_struct_t* m__parent;

    public:
        std::vector<kaitai::kstruct*>* structs() const { return m_structs; }
        params_pass_array_struct_t* _root() const { return m__root; }
        params_pass_array_struct_t* _parent() const { return m__parent; }
    };

private:
    bool f_one_two;
    std::unique_ptr<std::vector<kaitai::kstruct*>> m_one_two;

public:
    std::vector<kaitai::kstruct*>* one_two();

private:
    std::unique_ptr<foo_t> m_one;
    std::unique_ptr<bar_t> m_two;
    std::unique_ptr<struct_type_t> m_pass_structs;
    params_pass_array_struct_t* m__root;
    kaitai::kstruct* m__parent;

public:
    foo_t* one() const { return m_one.get(); }
    bar_t* two() const { return m_two.get(); }
    struct_type_t* pass_structs() const { return m_pass_structs.get(); }
    params_pass_array_struct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
