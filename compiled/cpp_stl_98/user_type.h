#ifndef USER_TYPE_H_
#define USER_TYPE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class user_type_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class user_type_t : public kaitai::kstruct {

public:
    class header_t;

    user_type_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, user_type_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~user_type_t();

    class header_t : public kaitai::kstruct {

    public:

        header_t(kaitai::kstream* p__io, user_type_t* p__parent = 0, user_type_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~header_t();

    private:
        uint32_t m_width;
        uint32_t m_height;
        user_type_t* m__root;
        user_type_t* m__parent;

    public:
        uint32_t width() const { return m_width; }
        uint32_t height() const { return m_height; }
        user_type_t* _root() const { return m__root; }
        user_type_t* _parent() const { return m__parent; }
    };

private:
    header_t* m_one;
    user_type_t* m__root;
    kaitai::kstruct* m__parent;

public:
    header_t* one() const { return m_one; }
    user_type_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // USER_TYPE_H_
