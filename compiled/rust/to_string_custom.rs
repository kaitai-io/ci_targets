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
use std::fmt;

#[derive(Default, Debug, Clone)]
pub struct ToStringCustom {
    pub _root: SharedType<ToStringCustom>,
    pub _parent: SharedType<ToStringCustom>,
    pub _self: SharedType<Self>,
    s1: RefCell<String>,
    s2: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ToStringCustom {
    type Root = ToStringCustom;
    type Parent = ToStringCustom;

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
        *self_rc.s1.borrow_mut() = bytes_to_str(&_io.read_bytes_term(124, false, true, true)?.into(), "UTF-8")?;
        *self_rc.s2.borrow_mut() = bytes_to_str(&_io.read_bytes_term(124, false, true, true)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl ToStringCustom {
}
impl ToStringCustom {
    pub fn s1(&self) -> Ref<String> {
        self.s1.borrow()
    }
}
impl ToStringCustom {
    pub fn s2(&self) -> Ref<String> {
        self.s2.borrow()
    }
}
impl ToStringCustom {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl fmt::Display for ToStringCustom {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}", format!("{}{}", format!("{}{}", format!("{}{}", "s1 = ", *self.s1()), ", s2 = "), *self.s2()))
    }
}
