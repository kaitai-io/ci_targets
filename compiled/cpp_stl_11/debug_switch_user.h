#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class debug_switch_user_t : public kaitai::kstruct {

public:
    class one_t;
    class two_t;

    debug_switch_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, debug_switch_user_t* p__root = nullptr);
    void _read();

private:
    void _clean_up();

public:
    ~debug_switch_user_t();

    class one_t : public kaitai::kstruct {

    public:

        one_t(kaitai::kstream* p__io, debug_switch_user_t* p__parent = nullptr, debug_switch_user_t* p__root = nullptr);
        void _read();

    private:
        void _clean_up();

    public:
        ~one_t();

    private:
        int16_t m_val;
        debug_switch_user_t* m__root;
        debug_switch_user_t* m__parent;

    public:
        int16_t val() const { return m_val; }
        debug_switch_user_t* _root() const { return m__root; }
        debug_switch_user_t* _parent() const { return m__parent; }
    };

    class two_t : public kaitai::kstruct {

    public:

        two_t(kaitai::kstream* p__io, debug_switch_user_t* p__parent = nullptr, debug_switch_user_t* p__root = nullptr);
        void _read();

    private:
        void _clean_up();

    public:
        ~two_t();

    private:
        uint16_t m_val;
        debug_switch_user_t* m__root;
        debug_switch_user_t* m__parent;

    public:
        uint16_t val() const { return m_val; }
        debug_switch_user_t* _root() const { return m__root; }
        debug_switch_user_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_code;
    std::unique_ptr<kaitai::kstruct> m_data;
    bool n_data;

public:
    bool _is_null_data() { data(); return n_data; };

private:
    debug_switch_user_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t code() const { return m_code; }
    kaitai::kstruct* data() const { return m_data.get(); }
    debug_switch_user_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
