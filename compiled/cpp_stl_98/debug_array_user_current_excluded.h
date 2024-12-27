#ifndef DEBUG_ARRAY_USER_CURRENT_EXCLUDED_H_
#define DEBUG_ARRAY_USER_CURRENT_EXCLUDED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class debug_array_user_current_excluded_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class debug_array_user_current_excluded_t : public kaitai::kstruct {

public:
    class cat_t;

    debug_array_user_current_excluded_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, debug_array_user_current_excluded_t* p__root = 0);
    void _read();

private:
    void _clean_up();

public:
    ~debug_array_user_current_excluded_t();

    class cat_t : public kaitai::kstruct {

    public:

        cat_t(kaitai::kstream* p__io, debug_array_user_current_excluded_t* p__parent = 0, debug_array_user_current_excluded_t* p__root = 0);
        void _read();

    private:
        void _clean_up();

    public:
        ~cat_t();

    private:
        std::string m_meow;
        debug_array_user_current_excluded_t* m__root;
        debug_array_user_current_excluded_t* m__parent;

    public:
        std::string meow() const { return m_meow; }
        debug_array_user_current_excluded_t* _root() const { return m__root; }
        debug_array_user_current_excluded_t* _parent() const { return m__parent; }
    };

private:
    std::vector<cat_t*>* m_array_of_cats;
    debug_array_user_current_excluded_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<cat_t*>* array_of_cats() const { return m_array_of_cats; }
    debug_array_user_current_excluded_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEBUG_ARRAY_USER_CURRENT_EXCLUDED_H_
