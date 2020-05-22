#ifndef DEBUG_ARRAY_USER_H_
#define DEBUG_ARRAY_USER_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class debug_array_user_t : public kaitai::kstruct {

public:
    class cat_t;

    debug_array_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, debug_array_user_t* p__root = 0);
    void _read();
    ~debug_array_user_t();

    class cat_t : public kaitai::kstruct {

    public:

        cat_t(kaitai::kstream* p__io, debug_array_user_t* p__parent = 0, debug_array_user_t* p__root = 0);
        void _read();
        ~cat_t();

    private:
        uint8_t m_meow;
        debug_array_user_t* m__root;
        debug_array_user_t* m__parent;

    public:
        uint8_t meow() const { return m_meow; }
        debug_array_user_t* _root() const { return m__root; }
        virtual debug_array_user_t* _parent() const { return m__parent; }
    };

private:
    cat_t* m_one_cat;
    std::vector<cat_t*>* m_array_of_cats;
    debug_array_user_t* m__root;
    kaitai::kstruct* m__parent;

public:
    cat_t* one_cat() const { return m_one_cat; }
    std::vector<cat_t*>* array_of_cats() const { return m_array_of_cats; }
    debug_array_user_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEBUG_ARRAY_USER_H_
