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
pub struct Expr0 {
    pub _root: SharedType<Expr0>,
    pub _parent: SharedType<Expr0>,
    pub _self: SharedType<Self>,
    len_of_1: RefCell<u16>,
    _io: RefCell<BytesReader>,
    f_must_be_abc123: Cell<bool>,
    must_be_abc123: RefCell<String>,
    f_must_be_f7: Cell<bool>,
    must_be_f7: RefCell<i32>,
}
impl KStruct for Expr0 {
    type Root = Expr0;
    type Parent = Expr0;

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
        Ok(())
    }
}
impl Expr0 {
    pub fn must_be_abc123(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_must_be_abc123.get() {
            return Ok(self.must_be_abc123.borrow());
        }
        self.f_must_be_abc123.set(true);
        *self.must_be_abc123.borrow_mut() = format!("{}{}", "abc", "123").to_string();
        Ok(self.must_be_abc123.borrow())
    }
    pub fn must_be_f7(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_must_be_f7.get() {
            return Ok(self.must_be_f7.borrow());
        }
        self.f_must_be_f7.set(true);
        *self.must_be_f7.borrow_mut() = (((7 as u8) + (240 as u8))) as i32;
        Ok(self.must_be_f7.borrow())
    }
}
impl Expr0 {
    pub fn len_of_1(&self) -> Ref<u16> {
        self.len_of_1.borrow()
    }
}
impl Expr0 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
