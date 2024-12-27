#ifndef DEBUG_ARRAY_USER_EOF_EXCEPTION_H_
#define DEBUG_ARRAY_USER_EOF_EXCEPTION_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class debug_array_user_eof_exception_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class debug_array_user_eof_exception_t : public kaitai::kstruct {

public:
    class cat_t;

    debug_array_user_eof_exception_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, debug_array_user_eof_exception_t* p__root = 0);
    void _read();

private:
    void _clean_up();

public:
    ~debug_array_user_eof_exception_t();

    class cat_t : public kaitai::kstruct {

    public:

        cat_t(kaitai::kstream* p__io, debug_array_user_eof_exception_t* p__parent = 0, debug_array_user_eof_exception_t* p__root = 0);
        void _read();

    private:
        void _clean_up();

    public:
        ~cat_t();

    private:
        uint8_t m_meow;
        uint8_t m_chirp;
        debug_array_user_eof_exception_t* m__root;
        debug_array_user_eof_exception_t* m__parent;

    public:
        uint8_t meow() const { return m_meow; }
        uint8_t chirp() const { return m_chirp; }
        debug_array_user_eof_exception_t* _root() const { return m__root; }
        debug_array_user_eof_exception_t* _parent() const { return m__parent; }
    };

private:
    cat_t* m_one_cat;
    std::vector<cat_t*>* m_array_of_cats;
    debug_array_user_eof_exception_t* m__root;
    kaitai::kstruct* m__parent;

public:
    cat_t* one_cat() const { return m_one_cat; }
    std::vector<cat_t*>* array_of_cats() const { return m_array_of_cats; }
    debug_array_user_eof_exception_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEBUG_ARRAY_USER_EOF_EXCEPTION_H_
