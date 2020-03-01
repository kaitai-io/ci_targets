#ifndef USER_TYPE_H_
#define USER_TYPE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class userType_t : public kaitai::kstruct {

public:
    class header_t;

    userType_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, userType_t* p__root = 0);

private:
    void _read();

public:
    ~userType_t();

    class header_t : public kaitai::kstruct {

    public:

        header_t(kaitai::kstream* p__io, userType_t* p__parent = 0, userType_t* p__root = 0);

    private:
        void _read();

    public:
        ~header_t();

    private:
        uint32_t m_width;
        uint32_t m_height;
        userType_t* m__root;
        userType_t* m__parent;

    public:
        uint32_t width() const { return m_width; }
        uint32_t height() const { return m_height; }
        userType_t* _root() const { return m__root; }
        userType_t* _parent() const { return m__parent; }
    };

private:
    header_t* m_one;
    userType_t* m__root;
    kaitai::kstruct* m__parent;

public:
    header_t* one() const { return m_one; }
    userType_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // USER_TYPE_H_
