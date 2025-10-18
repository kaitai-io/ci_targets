#ifndef PARAMS_PASS_BOOL_H_
#define PARAMS_PASS_BOOL_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_pass_bool_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_pass_bool_t : public kaitai::kstruct {

public:
    class param_type_b1_t;
    class param_type_bool_t;

    params_pass_bool_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, params_pass_bool_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~params_pass_bool_t();

    class param_type_b1_t : public kaitai::kstruct {

    public:

        param_type_b1_t(bool p_arg, kaitai::kstream* p__io, params_pass_bool_t* p__parent = 0, params_pass_bool_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~param_type_b1_t();
        std::string foo() const { return m_foo; }
        bool arg() const { return m_arg; }
        params_pass_bool_t* _root() const { return m__root; }
        params_pass_bool_t* _parent() const { return m__parent; }

    private:
        std::string m_foo;
        bool m_arg;
        params_pass_bool_t* m__root;
        params_pass_bool_t* m__parent;
    };

    class param_type_bool_t : public kaitai::kstruct {

    public:

        param_type_bool_t(bool p_arg, kaitai::kstream* p__io, params_pass_bool_t* p__parent = 0, params_pass_bool_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~param_type_bool_t();
        std::string foo() const { return m_foo; }
        bool arg() const { return m_arg; }
        params_pass_bool_t* _root() const { return m__root; }
        params_pass_bool_t* _parent() const { return m__parent; }

    private:
        std::string m_foo;
        bool m_arg;
        params_pass_bool_t* m__root;
        params_pass_bool_t* m__parent;
    };

public:
    bool v_false();
    bool v_true();
    bool s_false() const { return m_s_false; }
    bool s_true() const { return m_s_true; }
    param_type_b1_t* seq_b1() const { return m_seq_b1; }
    param_type_bool_t* seq_bool() const { return m_seq_bool; }
    param_type_b1_t* literal_b1() const { return m_literal_b1; }
    param_type_bool_t* literal_bool() const { return m_literal_bool; }
    param_type_b1_t* inst_b1() const { return m_inst_b1; }
    param_type_bool_t* inst_bool() const { return m_inst_bool; }
    params_pass_bool_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_v_false;
    bool m_v_false;
    bool f_v_true;
    bool m_v_true;
    bool m_s_false;
    bool m_s_true;
    param_type_b1_t* m_seq_b1;
    param_type_bool_t* m_seq_bool;
    param_type_b1_t* m_literal_b1;
    param_type_bool_t* m_literal_bool;
    param_type_b1_t* m_inst_b1;
    param_type_bool_t* m_inst_bool;
    params_pass_bool_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // PARAMS_PASS_BOOL_H_
