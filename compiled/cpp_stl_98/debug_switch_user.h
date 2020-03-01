#ifndef DEBUG_SWITCH_USER_H_
#define DEBUG_SWITCH_USER_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class debugSwitchUser_t : public kaitai::kstruct {

public:
    class one_t;
    class two_t;

    debugSwitchUser_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, debugSwitchUser_t* p__root = 0);
    void _read();
    ~debugSwitchUser_t();

    class one_t : public kaitai::kstruct {

    public:

        one_t(kaitai::kstream* p__io, debugSwitchUser_t* p__parent = 0, debugSwitchUser_t* p__root = 0);
        void _read();
        ~one_t();

    private:
        int16_t m_val;
        debugSwitchUser_t* m__root;
        debugSwitchUser_t* m__parent;

    public:
        int16_t val() const { return m_val; }
        debugSwitchUser_t* _root() const { return m__root; }
        debugSwitchUser_t* _parent() const { return m__parent; }
    };

    class two_t : public kaitai::kstruct {

    public:

        two_t(kaitai::kstream* p__io, debugSwitchUser_t* p__parent = 0, debugSwitchUser_t* p__root = 0);
        void _read();
        ~two_t();

    private:
        uint16_t m_val;
        debugSwitchUser_t* m__root;
        debugSwitchUser_t* m__parent;

    public:
        uint16_t val() const { return m_val; }
        debugSwitchUser_t* _root() const { return m__root; }
        debugSwitchUser_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_code;
    kaitai::kstruct* m_data;
    bool n_data;

public:
    bool _is_null_data() { data(); return n_data; };

private:
    debugSwitchUser_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t code() const { return m_code; }
    kaitai::kstruct* data() const { return m_data; }
    debugSwitchUser_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEBUG_SWITCH_USER_H_
