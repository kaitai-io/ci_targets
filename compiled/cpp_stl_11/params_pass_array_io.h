#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_pass_array_io_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_pass_array_io_t : public kaitai::kstruct {

public:
    class block_t;
    class param_type_t;

    params_pass_array_io_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_pass_array_io_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~params_pass_array_io_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, params_pass_array_io_t* p__parent = nullptr, params_pass_array_io_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~block_t();
        uint8_t foo() const { return m_foo; }
        params_pass_array_io_t* _root() const { return m__root; }
        params_pass_array_io_t* _parent() const { return m__parent; }

    private:
        uint8_t m_foo;
        params_pass_array_io_t* m__root;
        params_pass_array_io_t* m__parent;
    };

    class param_type_t : public kaitai::kstruct {

    public:

        param_type_t(std::vector<kaitai::kstream*>* p_arg_streams, kaitai::kstream* p__io, params_pass_array_io_t* p__parent = nullptr, params_pass_array_io_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~param_type_t();
        std::string buf() const { return m_buf; }
        std::vector<kaitai::kstream*>* arg_streams() const { return m_arg_streams; }
        params_pass_array_io_t* _root() const { return m__root; }
        params_pass_array_io_t* _parent() const { return m__parent; }

    private:
        std::string m_buf;
        std::vector<kaitai::kstream*>* m_arg_streams;
        params_pass_array_io_t* m__root;
        params_pass_array_io_t* m__parent;
    };

public:
    block_t* first() const { return m_first.get(); }
    param_type_t* one() const { return m_one.get(); }
    params_pass_array_io_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_first() const { return m__raw_first; }
    kaitai::kstream* _io__raw_first() const { return m__io__raw_first.get(); }

private:
    std::unique_ptr<block_t> m_first;
    std::unique_ptr<param_type_t> m_one;
    params_pass_array_io_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_first;
    std::unique_ptr<kaitai::kstream> m__io__raw_first;
};
