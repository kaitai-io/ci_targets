// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct StrEncodings {
    pub _root: SharedType<StrEncodings>,
    pub _parent: SharedType<StrEncodings>,
    pub _self: SharedType<Self>,
    len_of_1: RefCell<u16>,
    str1: RefCell<String>,
    len_of_2: RefCell<u16>,
    str2: RefCell<String>,
    len_of_3: RefCell<u16>,
    str3: RefCell<String>,
    len_of_4: RefCell<u16>,
    str4: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEncodings {
    type Root = StrEncodings;
    type Parent = StrEncodings;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.len_of_1.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str1.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_1() as usize)?.into(), "ASCII")?;
        *self_rc.len_of_2.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str2.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_2() as usize)?.into(), "UTF-8")?;
        *self_rc.len_of_3.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str3.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_3() as usize)?.into(), "Shift_JIS")?;
        *self_rc.len_of_4.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str4.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_4() as usize)?.into(), "IBM437")?;
        Ok(())
    }
}
impl StrEncodings {
}
impl StrEncodings {
    pub fn len_of_1(&self) -> Ref<u16> {
        self.len_of_1.borrow()
    }
}
impl StrEncodings {
    pub fn str1(&self) -> Ref<String> {
        self.str1.borrow()
    }
}
impl StrEncodings {
    pub fn len_of_2(&self) -> Ref<u16> {
        self.len_of_2.borrow()
    }
}
impl StrEncodings {
    pub fn str2(&self) -> Ref<String> {
        self.str2.borrow()
    }
}
impl StrEncodings {
    pub fn len_of_3(&self) -> Ref<u16> {
        self.len_of_3.borrow()
    }
}
impl StrEncodings {
    pub fn str3(&self) -> Ref<String> {
        self.str3.borrow()
    }
}
impl StrEncodings {
    pub fn len_of_4(&self) -> Ref<u16> {
        self.len_of_4.borrow()
    }
}
impl StrEncodings {
    pub fn str4(&self) -> Ref<String> {
        self.str4.borrow()
    }
}
impl StrEncodings {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
